all: main

clean:
	rm -f Makefile~ *.gemspec~ lib/*.rb~ bin/nraya~ cpp/*.cpp~

rmgem:
	rm -f nraya-0.0.1.gem

gembuild:
	gem build nraya.gemspec
