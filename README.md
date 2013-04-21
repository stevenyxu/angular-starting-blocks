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

Alternatives
------------

 * [angular-seed](https://github.com/angular/angular-seed), a static
   development environment for angular-js.
