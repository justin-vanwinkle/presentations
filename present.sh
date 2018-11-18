#!/bin/bash

function openBrowser(){
    sleep 5
    xdg-open "http://localhost:$port"
}

function usage(){
    echo "Usage:"
    echo "example: prepare.sh ./talks/mytalk <flags>"
    echo ""
    echo "Flags:"
    echo "-b | --browser	open presentation in browser"
    echo "--port		set alternate port (default: 3000)"
}

talk=
cmd="./start.sh"
port=3000
while [ "$1" != "" ]; do
    case $1 in
        -b | --browser )        openBrowser &
                                ;;
	--port )		shift
				port=$1
				;;
        -d | --debug )          cmd=/bin/bash
                                ;;
        -h | --help )           usage
                                exit
                                ;;
	* )			talk=$1
				;;
    esac
    shift
done


docker build -t presentation-builder:local ./_builder/
docker run -it --rm -p $port:80 -v "$(pwd)/$talk:/app/talk" presentation-builder:local $cmd
