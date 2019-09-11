function countingValleys(n, s) {
    var count = 0;
    var seaLevel = 0;

    for (var i = 0; i < n; i++) {
        if (s[i] === 'U') {
            seaLevel += 1;
        }
        if (s[i] === 'D') {
            seaLevel -= 1;
        }
        if (seaLevel === 0 && s[i] === 'U') {
            count++;
        }
    }
    return count;
}