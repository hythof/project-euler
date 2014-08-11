#include <iostream>
#include <algorithm>
#include <sstream>
#include <string>
#include <math.h>
using namespace std;
    
bool isPalindrome(int n) {
    stringstream ss;
    ss << n;
    string s = ss.str();
    int len = s.length();
    int mid = len / 2;
    string r;
    if(len % 2 == 0) {
        r = s.substr(mid, mid);
    } else {
        r = s.substr(mid + 1, mid);
    }
    reverse(r.begin(), r.end());
    return s.substr(0, mid) == r;
}

int maxPalindrome(int n) {
    int limit = (int)pow(10, n);
    int max = 0;
    for(int i=1; i<limit; ++i) {
        for(int j=1; j<=i; ++j) {
            int k = i * j;
            if(isPalindrome(k) && k > max) {
                max = k;
            }
        }
    }
    return max;
}

int main() {
    //cout << maxPalindrome(2) << endl;
    cout << maxPalindrome(3) << endl;
    return 0;
}
