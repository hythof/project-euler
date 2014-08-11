#include <iostream>
#include <vector>
#include <math.h>
#include <algorithm>
using namespace std;

void primes(vector<long> &px, long n) {
    px.push_back(2);
    for(long i=3; i<n; i+=2) {
        long limit = (long)sqrt(i);
        bool isPrime = true;
        for(long j=3; j<limit; j+=2)
        {
            if(i % j == 0)
            {
                isPrime = false;
                break;
            }
        }
        if(isPrime) {
            px.push_back(i);
        }
    }
}

void factories(vector<long> &fx, long n) {
    int k = n;
    vector<long>::iterator it;
    vector<long> px;
    primes(px, (long)sqrt(n));

    for(it=px.begin(); it!=px.end(); ++it) {
        long p = *it;
        if(n % p == 0) {
            k /= p;
            fx.push_back(p);
        }
        if(k == 0) {
            return;
        }
    }
}

int main() {
    vector<long> fx;
    vector<long>::iterator it;
    //factories(fx, 13195);
    //for(it=fx.begin(); it!=fx.end(); ++it) {
    //    cout << *it << " ";
    //}
    factories(fx, 600851475143);
    cout << *max_element(fx.begin(), fx.end()) << endl;
    return 0;
}
