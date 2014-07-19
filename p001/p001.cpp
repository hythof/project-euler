#include <iostream>
using namespace std;

int main() {
    const int max = 1000;
    int sum = 0;

    for(int i=0; i<max; ++i) {
        if(i%3 == 0 || i%5 == 0) {
            sum += i;
        }
    }
    cout << sum << endl;

    return 0;
}
