function main() {
  var N = parseInt(readLine());
  if (Math.abs(N % 2) == 1) {
    console.log("Weird");
  } else {
    if (N >= 6 && N <= 20) {
      console.log("Weird");
    } else if (N >= 2 && N <= 5) {
      console.log("Not Weird");
    } else {
      console.log("Not Weird");
    }
  }
}