# hvz.io

## What is it?

`hvz.io` is my version of the [HvZ Source](http://hvzsource.com) software platform. While the current Source software is very robust, it's not open source, it's not mobile friendly, and it's not run on very powerful hardware. `hvz.io` is intended to create an easy-to-implement version of the Source software that achieves all of those goals.

## Why open source?

[Humans vs Zombies](http://humansvszombies.org) is played on college campuses around the world, meaning that the majority of players are college students. A fair number of those students are also developers with the skills and creativity to engineer technology beyond the wildest dreams of the original developers of the Source software. Making `hvz.io` open source allows us to tap into that community resource to allow our technology to greatly enhance our game play and provide an excellent experience for players and moderators alike.

## Technology

This project is primarily written in Javascript. Our development dependencies are managed with [npm](http://nodejs.org), our Javascript dependencies are managed with [Bower](http://bower.io/), and our build process is managed with [Grunt](http://gruntjs.com). The application also uses these libraries and precompilers:

* [Coffeescript](http://coffeescript.org)
* [Backbone](http://backbonejs.org)
* [Handlebars](http://handlebarsjs.com)
* [Sass](http://sass-lang.com)

## Compiling

### Prerequisites

You *must* have the following software installed to compile the application:

* [NodeJS](http://nodejs.org)
* [Grunt CLI](http://gruntjs.com)
* [Bower](http://bower.io)
* [Sass](http://sass-lang.com)

### Compiling the the project

Whether this is the first time you've built the application or you've done it several times already, you can run `./hvz -b`. This will run `npm install` and `bower install` if it needs too, then it will run the Grunt `build` task to make sure your project and compile your Coffeescript files to make sure the project is ready to go. For more information on the `hvz` script, check out the section on it below.

### Running the app

~~The application is written in [Literate Coffeescript]() which, unfortunately, Grunt doesn't support very well yet. Instead of using our Gruntfile to watch our Coffeescript files we need to run the `coffee.sh` file in the project root. This will immediately compile all of our Javascript to the `build/` directory and then recompile files when they are changed.~~

~~We have several other tasks we need to accomplish: compile and watch our Sass files; minify images and copy them to the `build/` directory; lint our Coffeescript files. We can take care of all of those with `grunt watch`.~~

~~If you're not setting the application up on a web server then you may want to run the internal server with `grunt connect`.~~

All of the tasks above have been updated to make this whole thing much simpler.

## The `setup` script