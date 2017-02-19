#
# Make file for building website
#
all:  simple

simple:
	simple/mk-demo.bash

status:
	git status

save:
	git commit -am "Quick Save"
	git push origin master

clean:
	/bin/rm $(shell findfile -s .html)

