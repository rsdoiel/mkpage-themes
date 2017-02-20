#!/bin/bash

START=$(pwd)
cd $(dirname $0) 
#
#  # Three Theme Demo
#  
CSS="css/site.css"
SiteTitle="Three Demo Theme"
SiteSlogan="Three page types, flexible"
SiteInfo="mkpage-themes is a demo of how you might approach 'theming' a mkpage project"

SiteDescription=<<EOM
This is a demonstration of an approach to theming a _mkpage_
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

#
#  Render the theme's homepage
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
echo "Working directory $(pwd)"
for DOC in index; do
    echo "Assembling $DOC.html"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteSlogan=text:$SiteSlogan" \
        "SiteDescription=markdown:$SiteDescription" \
        "SiteInfo=text:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "ArticleList=markdown:$Title" \
        "Content=$DOC.md" \
        "Nav=nav.md" \
        index.tmpl > $DOC.html
done

#
# Render the theme's support pages
#
#  + page.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteSlogan
#      + .SiteInfo
#      + .SiteCopyright
#      + .Content
#      + .Nav
#  
echo "Working directory $(pwd)"
for DOC in page about contact; do 
    Title=$(titleline $DOC.md)
    echo "Assembling $DOC.html with title $Title"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteSlogan=text:$SiteSlogan" \
        "SiteInfo=text:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "Title=text:$Title" \
        "Content=$DOC" \
        "Nav=nav.md" \
        page.tmpl > $DOC.html
done

#  + article.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteInfo
#      + .SiteCopyright
#      + .Title
#      + .Byline
#      + .Article
#      + .Nav
echo "Working directory $(pwd)"
for DOC in article; do
    Title=$(titleline $DOC.md)
    echo "Assembling $DOC.html with title $Title"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteInfo=text:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "Title=text:$Title" \
        "Byline=text:$Byline" \
        "Article=$DOC.md" \
        "Nav=nav.md" \
        article.tmpl > $DOC.html
done

cd $START
