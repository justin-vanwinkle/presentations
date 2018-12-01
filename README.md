# Presentations

I use reveal-ck to build my presentations.
https://github.com/jedcn/reveal-ck
http://jedcn.github.io/reveal-ck/

**The info below is old**

This is a collection of my talks and presentations. In each subfolder below the `talks/` directory, there is an `output/index.html` that can be viewed with a browser to see the presentation.  The presentations are standalone and do not require an internet connection.

## Presentation Builder

To build presentations, I work from a modified version of my presentation builder project that can be found here: [https://github.com/justin-vanwinkle/presentation-builder](https://github.com/justin-vanwinkle/presentation-builder)

This is a stunningly simple and fast way to create beautiful presentations using [Reveal.js](https://github.com/hakimel/reveal.js) and Docker.

## Prerequisites

Docker is the only requirement.

## Usage

Executing `present.sh/ talks/mytalk -b` would build the talk `mytalk` and open a browser on `mytalk`.

### Create a new presentation

1. Run `cp -r skeletonTalk talks/<subpath>/<talkname>`
1. Modify `input/slides.md`
1. Place resources (images, videos, etc...) in `input/res` (subfolders are fine)
1. Run `./present.sh talks/<subpath>/<talkname>`

**Notes:**

* `input/slides.md` represents all slides for a talk.
* Any resources referenced in `input/slides.md` should be placed in `input/res/`.
* Changes to `slides.md` and the `res` directory trigger automatic rebuilds.  The browser requires manual refresh however.

### Distributing

If you wish to serve your talk in a simple way, you can grab the files from the `output` folder and drop them anywhere you can serve a webpage.
