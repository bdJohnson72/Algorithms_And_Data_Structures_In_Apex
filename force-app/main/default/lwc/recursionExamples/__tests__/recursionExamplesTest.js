/**
 * Created by Brooks Johnson on 1/7/2022.
 */

import { factorialCalculator } from "../recursionExamples";

describe("recursion test suite", () => {
  it("should return the correct factorial", () => {
    const result = factorialCalculator(5);
    expect(result).toBe(120);
  });
});
