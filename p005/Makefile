time=/usr/bin/time -p
all:
	$(time) runghc p005.hs
	$(time) go run p005.go
	g++ p005.cpp && $(time) ./a.out && rm a.out
	$(time) ruby p005.rb
