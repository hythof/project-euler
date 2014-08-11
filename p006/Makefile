time=/usr/bin/time -p
all:
	$(time) runghc p006.hs
	$(time) go run p006.go
	g++ p006.cpp && $(time) ./a.out && rm a.out
	$(time) ruby p006.rb
