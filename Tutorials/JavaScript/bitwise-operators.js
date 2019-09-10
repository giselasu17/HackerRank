function getMaxLessThanK(n, k) {
    var maximum = 0;
    for (var i = 1; i <= n; i++) {
        for (var j = 1; j < i; j++) {
            let andvalue = i & j;
            if (andvalue < k) {
                if (andvalue > maximum) {
                    maximum = andvalue;
                }
            }
        }
    }
    return maximum;
}