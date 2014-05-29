# hvz.io

## What is it?

`hvz.io` is my version of the [HvZ Source](http://hvzsource.com) software platform. While the current Source software is very robust, it's not open source, it's not mobile friendly, and it's not run on very powerful hardware. `hvz.io` is intended to create an easy-to-implement version of the Source software, making it much easier to achieve all of those goals.

## Why open source?

[Humans vs Zombies](http://humansvszombies.org) is played on college campuses around the world, meaning that the majority of players are college students. A fair number of those students are also developers with the skills and creativity to engineer technology beyond my wildest dreams. Making `hvz.io` open source allows me to tap into that community resource and allows anybody to contribute to the success of this project.

## Technology

This project is primarily written in Javascript. Our development dependencies are managed with [npm](http://nodejs.org), our Javascript dependencies are managed with [Bower](http://bower.io/), and our build process is managed with [Grunt](http://gruntjs.com). The application also uses these libraries and precompilers:

* [Coffeescript](http://coffeescript.org)
* [Backbone](http://backbonejs.org)
* [Handlebars](http://handlebarsjs.com)
* [Sass](http://sass-lang.com)

## Development

### Prerequisites

While Grunt will handle most of the compile tasks, you *must* have the following software installed to compile the application:

* [NodeJS](http://nodejs.org)
* [Grunt CLI](http://gruntjs.com)
* [Bower](http://bower.io)
* [Sass](http://sass-lang.com)

### Compiling the project

The `setup` script will run everything necessary for the application to run locally. If you don't have any of the dependencies listed above, the setup script will tell you to install them and then shut down.

If you *do* have all of the required dependencies the `setup` script will run through the following steps to get your project ready:

1. **Check for a lock file** - The script maintains a file in the `build/` directory named `.lock`. This file is compared against the script itself to see if anything has changed. If so, the script will continue down the list.
1. **Install NodeJS / Bower dependencies** - The script will run `npm install` and `bower install` to install any new dependencies that may have been added.
1. **Compile the project with Grunt**

You can also run the `setup` script with `-i` to enable interactive mode. In interactive mode the script will verify that you want to perform each task before it does. This may be useful if you don't want to perform certain tasks just yet.

### Running the server

Once the application has been compiled just change to the root directory and run `coffee server.coffee`. This will start up our ExpressJS server on port 3000.