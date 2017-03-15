
# mkpage themes

This is an experimental demo of how to theme a _mkpage_ based website.
The goal of this repository isn't to show off great design skills, I don't have
any.  The goal is to show an approach for implementing portable design, aka theming, 
to websites built with [mkpage](http://rsdoiel.github.io/mkpage).


## What you need to get started

+ [mkpage](https://rsdoiel.github.io/mkpage)
    + Download the latest release at https://github.com/rsdoiel/mkpage/releases/latest
+ Bash 
+ Your favorite text editor
+ Imagination


## What is a theme?

In the context of web design and websites a theme is a unified set of design elements
applied to content and used to render a website or page. It suggests a degree of portability
within the a given content management system (e.g. Wordpress, Drupal or in our
case _mkpage_).

A theme system usually manages 

+ HTML templates
+ Web assets like CSS, fonts and images associated with the theme
+ A mechanism to apply content to appropriate templates in a predictable manner


### What is a _mkpage_ theme?

In _mkpage_ a theme is made up of at least one Golang template plus any web assets
like CSS, fonts, images and JavaScript.

Theming in _mkpage_ makes the following assumptions

+ Templates are used to render HTML from data sources that are formatted as Markdown, JSON or plain text
+ CSS, fonts, images controls the appearence of the web page produced from templates
+ JavaScript is used for dynamic behavior in the rendered webpage
+ A Bash script orchestrates the invocation of the _mkpage_ command which applies content to templates


## Our theme experiments

+ [one](one/) is a minimal website structure built using a single template, CSS file and image assets.
+ [three](three/) a theme general purpose them with minimal styling supporting three page types

