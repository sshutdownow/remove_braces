#include <iostream>
#include <stack>
#include <string>

size_t
burn_closed_braces(std::stack<char> &ops) {
    size_t ans = 0;

    while (ops.size() >= 2) {
        char op = ops.top();
        ops.pop();
        // правильная скобочная последовательность
        if (op == ')' && (op = ops.top()) == '(' ) {
            ops.pop();
            ans += 2;
        } else {
            size_t n = burn_closed_braces(ops);
            ops.push(op);
            if (!n) {
                break;
            }
            ans += n;
        }
    }
    return ans;
}

int
main(void) {
    std::stack<char> ops;
    int ch;

    while ((ch = std::getchar()) != EOF ) {
        switch (static_cast<char>(ch)) {
           case '(':
           case ')':
              ops.push(ch);
           default:
               // ignore illegal chars
              continue;
       }
    }
    
    std::cout << ops.size() - burn_closed_braces(ops);
    
    return 0;
}
