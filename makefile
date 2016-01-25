clean:
	rm -rf inc
	cd src/json && $(MAKE) clean
	cd src/test && $(MAKE) clean
all:
	cd src/json && $(MAKE) all
	cd src/test && $(MAKE) all
