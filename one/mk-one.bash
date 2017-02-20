#!/bin/bash

START=$(pwd)
cd $(dirname $0) 
#
#  # One Theme Demo
#  
CSS="css/site.css"
SiteTitle="One Demo"
SiteSlogan="Small, simple, flexible"
SiteInfo="mkpage-themes is a demo of how you might approach 'theming' a mkpage project"

SiteDescription=<<EOM
This is a demonstration of an approach to theming a _mkpage_
based website. The primary purposes of this theme is to demonstrate
an approach to breaking down a theme into a single template, CSS file and a
graphic asset.

EOM

SiteCopyright="copyright &copy; 2017 R. S. Doiel, all rights reserved"

#
#  All pages are rendered with this simple template
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
for DOC in index contact about; do
    echo "Assembling $DOC.html"
    mkpage "Logo=assets/logo.svg" \
        "CSS=text:$CSS" \
        "SiteTitle=text:$SiteTitle" \
        "SiteSlogan=text:$SiteSlogan" \
        "SiteInfo=text:$SiteInfo" \
        "SiteCopyright=text:$SiteCopyright" \
        "Content=$DOC.md" \
        "Nav=nav.md" \
        page.tmpl > $DOC.html
    git add $DOC.html
done

