function howManyGames(p, d, m, s) {
    var count = 0;

    while (s >= p) {
        s -= p;
        if (p - d >= m) {
            p = p - d;
        } else {
            p = m;
        }
        count++;
    }
    return count;
}