#
# Make file for building website
#
all: index.html license.html install.html one three

index.html: 
	mkpage "Content=README.md" "Nav=nav.md" page.tmpl > index.html

license.html:
	mkpage "Content=LICENSE" "Nav=nav.md" page.tmpl > license.html

install.html:
	mkpage "Content=INSTALL.md" "Nav=nav.md" page.tmpl > install.html

one:
	one/mk-one.bash

three:
	three/mk-three.bash

status:
	git status

save:
	git commit -am "Quick Save"
	git push origin master

clean:
	/bin/rm $(shell findfile -s .html)

