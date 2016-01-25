clean:
	cd json && $(MAKE) clean
	cd test && $(MAKE) clean
build:
	cd json && $(MAKE) all
	cd test && $(MAKE) all
