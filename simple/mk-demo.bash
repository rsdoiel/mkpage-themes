#!/bin/bash

#
#  # Simple Theme Demo
#  
CSS="css/site.css"
SiteTitle="Simple Demo Theme"
SiteSlogan="Small, simple, flexible"
SiteInfo="mkpage-themes is a demo of how you might approach 'theme-ing' a mkpage project"
SiteDescription=<<EOM
This is a demonstration of an approach to theme-ing a _mkpage_
based website. The primary purposes of this theme is to demonstrate
an approach to breaking down a theme into template, CSS and graphic
assets.

EOM
SiteCopyright="copyright &copy; 2017 R. S. Doiel, all rights reserved"
Title="The parts of a mkpage theme"
Byline="By $USER $(date +%Y-%m-%d)"
ArticleList=<<EOM

## Articles in Demo

+ [Article](article.html)

EOM

#  + article.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteInfo
#      + .SiteCopyright
#      + .Title
#      + .Byline
#      + .Article
#      + .Nav
mkpage "Logo=assets/logo.svg" \
    "CSS=text:$CSS" \
    "SiteTitle=text:$SiteTitle" \
    "SiteInfo=text:$SiteInfo" \
    "SiteCopyright=text:$SiteCopyright" \
    "Title=text:$Title" \
    "Byline=text:$Byline" \
    "Article=article.md" \
    "Nav=nav.md" \
    article.tmpl > article.html


#
#  + index.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteSlogan
#      + .SiteDescription
#      + .SiteInfo
#      + .SiteCopyright
#      + .ArticleList
#      + .SideBar
#      + .Nav
mkpage "Logo=assets/logo.svg" \
    "CSS=text:$CSS" \
    "SiteTitle=text:$SiteTitle" \
    "SiteSlogan=text:$SiteSlogan" \
    "SiteDescription=markdown:$SiteDescription" \
    "SiteInfo=text:$SiteInfo" \
    "SiteCopyright=text:$SiteCopyright" \
    "ArticleList=markdown:$Title" \
    "Nav=nav.md" \
    index.tmpl > index.html


#
#  + page.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteSlogan
#      + .SiteInfo
#      + .SiteCopyright
#      + .Content
#      + .SideBar
#      + .Nav
#  
mkpage "Logo=assets/logo.svg" \
    "CSS=text:$CSS" \
    "SiteTitle=text:$SiteTitle" \
    "SiteSlogan=text:$SiteSlogan" \
    "SiteInfo=text:$SiteInfo" \
    "SiteCopyright=text:$SiteCopyright" \
    "Title=text:$Title" \
    "Content=page.md" \
    "SideBar=sidebar.md" \
    "Nav=nav.md" \
    page.tmpl > page.html

