class Calculator: AdvancedArithmetic {
    public int divisorSum (int n) {
        int sum = 1;
        int div = n;
        while (div > 1) {
            if (n % div == 0) {
                sum += div;
                div--;
            }
            else
            {
                div--;
            }
        }
        return sum;
    }
}