#
# Make file for building website
#
all:
	./mk-simple.bash

status:
	git status

save:
	git commit -am "Quick Save"
	git push origin master

clean:
	/bin/rm $(shell findfile -s .html)

