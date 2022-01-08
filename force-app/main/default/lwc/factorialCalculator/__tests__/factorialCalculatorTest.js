/**
 * Created by Brooks Johnson on 1/7/2022.
 */

import { createElement } from "lwc";
import factorialCalculator from "c/factorialCalculator";

describe("factorial calculator test suite", () => {
  afterEach(() => {
    while (document.body.firstChild) {
      document.body.removeChild(document.body.firstChild);
    }
  });
  it("should render result", () => {
    const element = createElement("c-factorial-calculator", {
      is: factorialCalculator
    });
    document.body.appendChild(element);
    const input = element.shadowRoot.querySelector("lightning-input");
    input.value = 5;
    const button = element.shadowRoot.querySelector("lightning-button");
    button.dispatchEvent(new CustomEvent("click"));
    const result = element.shadowRoot.querySelector("p");
    return Promise.resolve().then(() => {
      expect(result.textContent).toBe("result: 120");
    });
  });
});
