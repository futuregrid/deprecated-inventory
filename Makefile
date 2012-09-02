PROJECT=inventory
all:
	cd /tmp
	rm -rf /tmp/$(PROJECT)
	mkdir -p /tmp/$(PROJECT)
	cd /tmp/$(PROJECT); git clone git://github.com/futuregrid/$(PROJECT).git
	cd /tmp/$(PROJECT)/$(PROJECT)/doc; ls; make html
	cp -r /tmp/$(PROJECT)/$(PROJECT)/doc/build/html/* .
	git add .
	git commit -a -m "updating the github pages"
#	git commit -a _sources
#	git commit -a _static
	git push
	git checkout master
