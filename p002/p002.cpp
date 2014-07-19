#include <iostream>
using namespace std;
        
int main() {
    const int limit = 4 * 1000 * 1000;
    int s = 0;
    int n = 0;
    int n1 = 0;
    int n2 = 1;
    while(n <= limit) {
        n = n1 + n2;
        n1 = n2;
        n2 = n;
        if(n % 2 == 0) {
            s += n;
        }
    }
    cout << s << endl;
    return 0;
}
