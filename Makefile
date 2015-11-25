all: main

clean:
	rm -f Makefile~
	rm -f *.gemspec~
	rm -f lib/*.rb~
	rm -f bin/nraya~
	rm -f tests/*.txt~

rmgem:
	rm -f nraya-0.0.*.gem

gembuild:
	gem build nraya.gemspec

win:
	rm -f nraya-0.0.*.gem
	gem build nraya.gemspec
	gem install nraya-0.0.*.gem
	nraya

main:
	rm -f nraya-0.0.*.gem
	gem build nraya.gemspec
	sudo gem install nraya-0.0.*.gem
	nraya
