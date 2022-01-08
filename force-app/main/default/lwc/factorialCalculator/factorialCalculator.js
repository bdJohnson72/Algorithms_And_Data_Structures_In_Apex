/**
 * Created by Brooks Johnson on 1/7/2022.
 */

import { LightningElement } from "lwc";
import { factorialCalculator } from "c/recursionExamples";

export default class FactorialCalculator extends LightningElement {
  result;

  handleClick() {
    const input = this.template.querySelector("lightning-input");
    this.result = factorialCalculator(parseInt(input.value, 10));
    console.log(this.result);
  }
}
