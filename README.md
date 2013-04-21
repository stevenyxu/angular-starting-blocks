Javascript Web Client
=====================

**A template Rails application designed for building Javascript web clients.**

This is a template Rails application that can be used as the basis to develop
and deploy standalone HTML/Javascript web clients. It is primarily designed for
the AngularJS framework but should be extensible to other ones. It also brings
in Zurb Foundation and its icon sets by default.

Why Rails?
----------

Rails provides a nice out-of-the-box setup to develop on and deploy Javascript
and CSS assets using the [asset
pipeline](http://edgeguides.rubyonrails.org/asset_pipeline.html). This has a
number of advantages over developing on static files:
 * The asset pipeline renders in development mode by loading each source (js,
   css, html) file individually on the document, allowing for easy debugging.
 * The pipeline through Sprockets allows for easy preprocessing (SASS,
   CoffeeScript, ERB, HAML).
 * Rails provides precompilation tasks that consolidates, minifies, and even
   pre-compresses files for production use, identifying assets with unique
   versioned paths, allowing for powerful browser caching.

Prerequisites
-------------

 * Ruby 2.0
 * Bundler
 * PhantomJS to run tests (more information available on the
   [poltergeist](https://github.com/jonleighton/poltergeist/tree/v1.2.0)
   readme)


Usage
-----

Simply fork and use!

Once you've checked out your application:

    bundle install
    bundle exec rails server

### Testing

This application comes with specs ready to run out of the box in `spec/features`.

    bundle exec rake spec

### Conventions

The root module for the AngularJS application governing the site is at
`app/assets/javascripts/javascript_web_client.js.coffee.erb`. The file name in
the asset pipeline is referred to throughout the AngularJS classes. The module
name `angular.JavascriptWebClient` is also referred to in the application
layout at `app/views/layouts/application.html.haml`. The application may be
renamed but needs to be renamed in all these places.

Directives are placed in `app/assets/javascripts/directives` and are splat
required by `app/assets/javascripts/application.js`.

Controllers are placed in `app/assets/javascripts/controllers` and are splat
required by `app/assets/javascripts/application.js`.

Templates are placed in `app/assets/templates` and are referred to from modules
and directives by using the ERB function `asset_path` from the Rails asset
pipeline. Consequently, Javascript source files that need to refer to template
paths typically have `.erb` extensions.

### Tools

For [vim-rails](http://www.vim.org/scripts/script.php?script_id=1567) (version
5.0 or newer required) users, `config/projections.json` is provided. This
allows you to use helpers like `:Rngcontroller`, `:Rdirective`, and
`Rtemplate`.

### Deployment

Use Rails' precompile task:

    RAILS_ENV=assets bundle exec rake assets:precompile

You will still require the Rack server to serve the application as a whole, but
anything out of `public/assets` can be served statically or out of a CDN (by
setting `config.action_controller.asset_host`; see the [asset pipeline
readme](http://guides.rubyonrails.org/asset_pipeline.html) for more details)
with filename-based browser caching.

Troubleshooting
---------------

 * **Asset paths (`asset_path`) not resolving as expected in other files in the
   pipeline:** Restart the server and delete `public/assets` and `tmp/cache` to
   remove Sprockets cache files, which can contain stale data about failed
   filesystem lookups.

Alternatives
------------

 * [angular-seed](https://github.com/angular/angular-seed), a static
   development environment for angular-js.
