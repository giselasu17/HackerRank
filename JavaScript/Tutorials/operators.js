function Main (mealCost, tipPercent, taxPercent) {
  var tip =  (mealCost * tipPercent) / 100;
  var tax =  (mealCost * taxPercent) / 100;
  var totalCost = mealCost + tip + tax;
  console.log("The total meal cost is", totalCost.toFixed(0), "dollars.");
}