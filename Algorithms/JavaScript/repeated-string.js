function repeatedString(s, n) {
    if (s === 'a') {
        return n;
    } else {
        var count = 0;
        var strLength = s.length;
        var duplicated = Math.floor(n / strLength);
        var rest = n % strLength;

        for (var i = 0; i < strLength; i++) {
            if (s.charAt(i) === 'a') {
                if (i < rest) {
                    count += duplicated + 1;
                } else {
                    count += duplicated;
                }
            }
        }
        return count;
    }
}