/**
 * Created by Brooks Johnson on 1/7/2022.
 */

function factorialCalculator(number) {
  if (number === 1) {
    return 1;
  }
  return number * factorialCalculator(number - 1);
}

export { factorialCalculator };
