#include <iostream>
using namespace std;
 
bool isPrime(int n) {
    for(int i=2; i<n; ++i) {
        if(n % i == 0) {
            return false;
        }
    }
    return true;
}

int factor(int n) {
    int xs[n];
    int step = 0;
    for(int i=0; i<n; ++i)
    {
        int x = i + 1;
        xs[i] = x;
        if(isPrime(x)) {
            step += x;
        }
    }

    for(int i=step; true; i+=step) {
        bool enough = true;
        for(int j=0; j<n; ++j) {
            if(i % xs[j] != 0) {
                enough = false;
                break;
            }
        }
        if(enough) {
            return i;
        }
    }

    return 0;
}

int main() {
    //cout << factor(10) << endl;
    cout << factor(20) << endl;
    return 0;
}
