
# Three, small, flexible

## Theme Demo for _mkpage_ project

The purpose of this theme is not to illustrate web design but to show
how you might approach building a _mkpage_ based website with only
three page types. The theme itself is driven by three Go templates,
CSS, an embeddable SVG image asset and some markdown content. Site
navigation, like page content, is built using Markdown. Site navigation
is defined in [nav.md](nav.md) and results in a simple one level
UL element embedded inside the NAV element of the templated pages.

This theme supports three page types.

1. index.tmpl for landing pages
2. page.tmpl for general purpose pages like about and contact pages
3. article.tmpl for articles and blog posts

Navigation is controlled through a _nav.md_ file included
into each template (i.e. files ending in .tmpl).


The following template variables (replaceable content) are used in the page
templates.

+ index.tmpl example output [index.html](index.html)
    + .Logo
    + .SiteTitle
    + .SiteSlogan
    + .SiteDescription
    + .SiteInfo
    + .SiteCopyright
    + .Content
    + .ArticleList
    + .Nav
+ page.tmpl example output [page.html](page.html)
    + .Logo
    + .SiteTitle
    + .SiteSlogan
    + .SiteInfo
    + .SiteCopyright
    + .Content
    + .Nav
+ article.tmpl example output [article.html](article.html)
    + .Logo
    + .SiteTitle
    + .SiteInfo
    + .SiteCopyright
    + .Title
    + .Byeline
    + .Article
    + .SideBar
    + .Nav


