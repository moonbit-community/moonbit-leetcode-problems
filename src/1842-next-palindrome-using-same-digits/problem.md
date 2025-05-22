# Next Palindrome Using Same Digits

You are given a numeric string `num`, representing a very large **palindrome**.

Return _the **smallest palindrome larger than**_ `num` _that can be created by rearranging its digits. If no such palindrome exists, return an empty string_ `" "`.

A **palindrome** is a number that reads the same backward as forward.

**Example 1:**

**Input:** num =  "1221 "
**Output:**  "2112 "
**Explanation:** The next palindrome larger than  "1221 " is  "2112 ".

**Example 2:**

**Input:** num =  "32123 "
**Output:**  " "
**Explanation:** No palindromes larger than  "32123 " can be made by rearranging the digits.

**Example 3:**

**Input:** num =  "45544554 "
**Output:**  "54455445 "
**Explanation:** The next palindrome larger than  "45544554 " is  "54455445 ".

**Constraints:**

* `1 <= num.length <= 10^5`
* `num` is a **palindrome**.
