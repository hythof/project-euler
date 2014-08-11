time=/usr/bin/time -p

all:
	$(time) runghc p003.hs
	@echo "--"
	$(time) go run p003.go
	@echo "--"
	g++ -O3 p003.cpp && $(time) ./a.out && rm a.out
	@echo "--"
	$(time) ruby p003.rb
	@echo "--"
