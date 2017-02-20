#!/bin/bash

START=$(pwd)
cd $(dirname $0) 
#
#  # Three Theme Demo
#  
CSS="css/site.css"
SiteTitle="Three Demo Theme"
SiteSlogan="Three page types, flexible"
SiteInfo="mkpage-themes is a demo of how you might approach _theming_ a mkpage project"

SiteDescription=<<EOM
This is a demonstration of an approach to theming a _mkpage_
based website. The primary purposes of this theme is to demonstrate
an approach to breaking down a theme into template, CSS and graphic
assets.

EOM

SiteCopyright="copyright &copy; 2017 R. S. Doiel, all rights reserved"

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
    Title=$(titleline -i $DOC.md)
    echo "Assembling $DOC.html with title $Title"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "Content=$DOC.md" \
        "SiteSlogan=text:$SiteSlogan" \
        "SiteDescription=markdown:$SiteDescription" \
        "SiteInfo=text:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "ArticleList=markdown:$Title" \
        "Nav=nav.md" \
        index.tmpl > $DOC.html
    git add $DOC.html
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
for DOC in page about contact; do 
    Title=$(titleline -i $DOC.md)
    echo "Assembling $DOC.html with title $Title"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteSlogan=text:$SiteSlogan" \
        "SiteInfo=markdown:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "Title=markdown:$Title" \
        "Content=$DOC.md" \
        "Nav=nav.md" \
        page.tmpl > $DOC.html
    git add $DOC.html
done

#  + article.tmpl
#      + .Logo
#      + .SiteTitle
#      + .SiteInfo
#      + .SiteCopyright
#      + .Title
#      + .Byline
#      + .Article
#      + .SideBar
#      + .Nav
for DOC in article; do
    Title=$(titleline -i $DOC.md)
    Byline=$(byline -i $DOC.md)
    echo "Assembling $DOC.html with title $Title"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteInfo=markdown:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "Title=markdown:$Title" \
        "Byline=markdown:$Byline" \
        "Article=$DOC.md" \
        "SideBar=sidebar.md" \
        "Nav=nav.md" \
        article.tmpl > $DOC.html
    git add $DOC.html
done

cd $START
