int fib4(int n) {
    int a = 1;
    int b = 1;
    int i = 0;
    while(1) {
        i += 1;
        if (i >= n) { break; }
        int s = a + b;
        a = b;
        b = s;
    }
    return a;
}

