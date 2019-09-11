function jumpingOnClouds(c) {
    var jumps = 0;
    var i = 0;

    while (i < c.length - 1) {
        if (c[i + 2] === 1) {
            i += 1;
        } else {
            i += 2;
        }
        jumps++;
    }

    return jumps;
}