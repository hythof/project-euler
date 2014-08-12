#include <iostream>
#include <vector>
using namespace std;
 
void sieveOfEratostenes(int start, int end, vector<int> *xs) {
    vector<int>::iterator it;
    for(int i=start; i<=end; i+=2) {
        bool isPrime = true;
        for(it=xs->begin(); it!=xs->end(); ++it) {
            int v = *it;
            if(i % v == 0) {
                isPrime = false;
                break;
            }
        }
        if(isPrime) {
            xs->push_back(i);
        }
    }
}

int prime(int n) {
    vector<int> xs;
    xs.push_back(2);
    int start = 3;
    int end = n * 2;
    while(xs.size() <= n) {
        sieveOfEratostenes(start, end, &xs);
        start = *(xs.end() - 1) + 2;
        end = start * 2;
    }
    return xs[n];
}

int main() {
    cout << prime(10000) << endl;
    return 0;
}
