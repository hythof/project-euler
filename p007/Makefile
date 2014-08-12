time=/usr/bin/time -p
all:
	$(time) runghc p007.hs
	echo "--"
	$(time) go run p007.go
	echo "--"
	g++ -O3 p007.cpp && $(time) ./a.out && rm a.out
	echo "--"
	$(time) ruby p007.rb
	echo "--"
