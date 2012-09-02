PROJECT=inventory
all:
	cd /tmp
	rm -rf /tmp/$(PROJECT)
	mkdir -p /tmp/$(PROJECT)
	cd /tmp/$(PROJECT); git clone git://github.com/futuregrid/$(PROJECT).git
	cd /tmp/vc/doc/$(PROJECT); ls; make html
	cp -r /tmp/vc/doc/$(PROJECT)/build/html/* .
	git add .
	git commit -a -m "updating the github pages"
#	git commit -a _sources
#	git commit -a _static
	git push
	git checkout master
