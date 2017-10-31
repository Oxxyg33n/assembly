int power(long base, long exponent) {
    int counter;
    int result = 1;
    for (counter = 0; counter < exponent; counter++)
        result *= base;
    return result;
}

