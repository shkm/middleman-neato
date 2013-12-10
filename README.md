# Middleman-neato

A nice project template for [Middleman], the fantastic static site building tool.


## Features

Neato sets you up with the following, straight out of the box:

- [Slim](http://slim-lang.com/) templating
- [Sass](http://sass-lang.com/) support with [Bourbon](http://bourbon.io/) & [Neat](http://neat.bourbon.io/)
- A basic page layout & 404 page based on [HTML5 Boilerplate](http://html5boilerplate.com/) (in Slim)
- [Blogging support](https://github.com/middleman/middleman-blog) with feeds (easily disabled where not required)
- Syntax highlighting via [middleman-syntax](https://github.com/middleman/middleman-syntax), with an easy theme toggle
- Simple Google Analytics support
- [Livereload](https://github.com/middleman/middleman-livereload)
- CSS & Javascript minification, image optimisation and gzipping on build

Thanks to the brilliance of [Middleman], this should get you up and running on new projects pretty darn fast.


## Use

Install [Middleman]:

    gem install middleman


Clone Neato:

    git clone git@github.com:shkm/middleman-neato.git my-project

Install gems and get to work!

    cd my-project
    bundle install
    middleman


## Template Install

If you find yourself using Neato often, you can install it as a middleman template:

    git clone git@github.com:shkm/middleman-neato.git ~/.middleman/neato

Now you can simply init new projects with the Neato template:

    middleman init -T=neato my-project

Just don't forget to update `~/.middleman/neato` every now and then.


## Copyright and licence

Copyright 2013 Jamie Schembri, under the [MIT licence](LICENSE).

  [middleman]: http://middlemanapp.com/

