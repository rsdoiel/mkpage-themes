
# One, builds a minimal design

## Theme Demo for _mkpage_ projects

One is a minimal theme. It uses a single page template, CSS file
an single embeddible SVG file. It demonstrates basic usage of the
_mkpage_ command in a Bash script (see [mk-one.bash](mk-one.bash)).

Site navigation is managed in a Markdown file named _nav.md_. That
file renders as a single level UL element. Other markdown files
hold the main body content of the page. 

If you are building a website that fits well into a single page 
then this theme is a good starting point for experimentation.

## The components

1. page.tmpl is the template used to render all HTML pages
2. css/site.css is the CSS used to define the sites design
3. assets/logo.svg is an embeddible logo to demonostrate embedding text formats

The following template variables (replaceable content) are used in the page
templates.

+ page.tmpl example output [index.html](index.html)
    + .Logo
    + .CSS
    + .SiteTitle
    + .SiteSlogan
    + .SiteInfo
    + .SiteCopyright
    + .Content
    + .Nav

## The content

One includes three pages of content for demonstration purposes

1. index.md - this page
2. contacts.md - an example contacts page
3. about.md - an example about page

