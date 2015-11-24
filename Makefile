all: main

clean:
	rm -f Makefile~
	rm -f *.gemspec~
	rm -f lib/*.rb~
	rm -f bin/nraya~
	rm -f cpp/*.cpp~

rmgem:
	rm -f nraya-0.0.1.gem

gembuild:
	gem build nraya.gemspec

main:
	rm -f nraya-0.0.1.gem
	gem build nraya.gemspec
	sudo gem install nraya-0.0.1.gem
	nraya
