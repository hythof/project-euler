#!ruby

def file name, src
    throw "file exists" if File.exist? name
    File.open(name, "w") do |fh|
        fh.print src
    end
end

def main n
    Dir.mkdir "p#{n}"
    Dir.chdir "p#{n}" do
        file "Makefile", "time=/usr/bin/time -p
all:
\t$(time) runghc p#{n}.hs
\t$(time) go run p#{n}.go
\tg++ p#{n}.cpp && $(time) ./a.out && rm a.out
\t$(time) ruby p#{n}.rb
"
        file "p#{n}.hs", 'main = do
  print "no implement"'
        file "p#{n}.rb", 'puts "no implement"'
        file "p#{n}.go", 'package main

import "fmt"

func main() {
    fmt.Printf("no implement")
}'
         file "p#{n}.cpp", '#include <iostream>
using namespace std;
        
int main() {
    cout << "no implement" << endl;
    return 0;
}'
    end
end

main sprintf("%03d", ARGV[0])
