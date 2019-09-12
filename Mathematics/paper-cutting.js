function solve(n, m) {
    return ((n * m) - 1);
}

function main() {
    var BigNumber = require('bignumber.js');
    var temp = readLine().split(' ').map(Number);
    console.log(String(new BigNumber(temp[0]).times(new BigNumber(temp[1])).minus(new BigNumber(1))));
};