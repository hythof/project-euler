#include <iostream>
#include <math.h>
using namespace std;


int sumA(int xs[], int len) {
    int s = 0;
    for(int i=0; i<len; i++) {
        s += xs[i];
    }
    return (int)pow(s, 2);
}

int sumB(int xs[], int len) {
    int s = 0;
    for(int i=0; i<len; i++) {
        s += (int)pow(xs[i], 2);
    }
    return s;
}

int diff(int n) {
    int xs[n];
    for(int i=0; i<n; ++i) {
        xs[i] = 1 + i;
    }
    return sumA(xs, n) - sumB(xs, n);
}

int main() {
    cout << diff(100) << endl;
    return 0;
}
