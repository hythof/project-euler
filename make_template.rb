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
        file "Makefile", "all:
\trunghc p#{n}.hs
\tgo run p#{n}.go
\tg++ p#{n}.cpp && ./a.out && rm a.out
\truby p#{n}.rb
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
