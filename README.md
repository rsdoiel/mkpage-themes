
# mkpage themes

This is an experimental demo of how to theme a _mkpage_ based websites.

## What is a _mkpage_ theme?

A theme is made up of Golang templates, CSS and any media assets such as 
site logo, fonts or other image files required by the theme.

+ Templates are used to render HTML from data sources produced in Markdown, JSON or plain text
+ CSS controls the appearence of the websites produced with these themes
+ Images and design related media are also included via an assets folder
+ If addition behavior is needed then Javascript files could also be included in a js directory

The goal of this repository isn't to show off great design skills, I don't have
any.  The goal is to show how you can use [mkpage](http://rsdoiel.github.io/mkpage)
to structure websites simplely and easily with one or more templates, HTML, CSS and
media assets. _mkpage_ itself is easily scriptable from Bash or your favorite
scripting language. Each theme demostration is built using a Bash script
and utilities from _mkpage_ project.

### What you need to get started

+ [mkpage](https://rsdoiel.github.io/mkpage) and download the latest release at [https://github.com/rsdoiel/mkpage/releases/latest](https://github.com/rsdoiel/mkpage/releases/latest).
+ Bash (available on Linux, Windows, Mac OS X and Raspberry Pis)
+ Your favorite text editor
+ Imagination

## Our Theme Experiments

+ [one](one/) is a minimal website structure built using a single template, CSS file and image assets.
+ [three](three/) a theme general purpose them with minimal styling supporting three page types

