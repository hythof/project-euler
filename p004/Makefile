time=/usr/bin/time -p
all:
	$(time) runghc p004.hs
	$(time) go run p004.go
	g++ p004.cpp && $(time) ./a.out && rm a.out
	$(time) ruby p004.rb
