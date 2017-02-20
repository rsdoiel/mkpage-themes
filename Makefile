#
# Make file for building website
#
all:
	./one/mk-one.bash
	./three/mk-three.bash
	mkpage "SiteTitle=text:mkpage-themes" "CSS=text:css/site.css" "Content=README.md" "Nav=nav.md" page.tmpl > index.html
	git add index.html
	mkpage "SiteTitle=text:mkpage-themes" "CSS=text:css/site.css" "Content=LICENSE" "Nav=nav.md" page.tmpl > license.html
	git add license.html
	mkpage "SiteTitle=text:mkpage-themes" "CSS=text:css/site.css" "Content=INSTALL.md" "Nav=nav.md" page.tmpl > install.html
	git add install.html


publish:
	./publish.bash

status:
	git status

save:
	git commit -am "Quick Save"
	git push origin master

clean:
	/bin/rm $(shell findfile -s .html)

