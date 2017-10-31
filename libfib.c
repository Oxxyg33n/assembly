int fib(int n) {
    int a = 1;
    int b = 1;
    int i;
    for (i = 0; i < n; i++) {
        int s = a + b;
        a = b;
        b = s;
    }
    return a;
}
