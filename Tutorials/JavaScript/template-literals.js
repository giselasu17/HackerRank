function sides(literals, ...expressions) {
    let [A, P] = expressions;
    let root = Math.sqrt((Math.pow(P, 2) - (16 * A)));
    let s1 = (P + root) / 4;
    let s2 = (P - root) / 4;

    return [s1, s2].sort();
}