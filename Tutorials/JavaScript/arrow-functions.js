function modifyArray(nums) {
    return nums.map((n) => {
        if (n % 2 == 0) {
            return n * 2;
        } else {
            return n * 3;
        }
    });
}