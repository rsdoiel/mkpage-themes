
# One, builds on a minimal design

## A Demo Theme for a _mkpage_ project

One is a minimal theme. It uses a single page template, a CSS file
and a single embeddible SVG file. It demonstrates basic usage of the
_mkpage_ command in a Bash script (see [mk-one.bash](mk-one.bash)).

Site navigation is managed in a Markdown file named _nav.md_. That
file renders as a single level UL element. Other markdown files
provide the main body content for the three pages of the site
(index, about, contact).

If you are building a website that fits well into a single page 
then this theme is a good starting point for experimentation.

## The components

1. page.tmpl is the template used to render all HTML pages
2. css/site.css is the CSS used to define the sites design
3. assets/logo.svg is an embeddible logo to demonostrate embedding SVG images in HTML

The following template variables (replaceable content) are used.

+ page.tmpl example output [index.html](index.html)
    + .Logo - path to the SVG that will be embedded in the HTML
    + .CSS - text of path to the CSS file
    + .SiteTitle - text of title
    + .SiteSlogan - text of site slogan if available
    + .SiteInfo - text site info
    + .SiteCopyright - text of license info
    + .Content - name of markdown file containing the content for the page
    + .Nav - name of the markdown file containing site navigation

## The content

This demo site includes three pages of content for demonstration purposes

1. index.md - this page
2. contacts.md - an example contacts page
3. about.md - an example about page

