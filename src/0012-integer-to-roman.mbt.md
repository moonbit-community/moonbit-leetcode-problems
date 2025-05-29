---
difficulty: Medium
verified: true
---

# Integer to Roman

Roman numerals are represented by seven different symbols: `I`, `V`, `X`, `L`, `C`, `D` and `M`.

**Symbol**       **Value**
I             1
V             5
X             10
L             50
C             100
D             500
M             1000

For example, `2` is written as `II` in Roman numeral, just two one's added together. `12` is written as `XII`, which is simply `X + II`. The number `27` is written as `XXVII`, which is `XX + V + II`.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not `IIII`. Instead, the number four is written as `IV`. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as `IX`. There are six instances where subtraction is used:

* `I` can be placed before `V` (5) and `X` (10) to make 4 and 9.
* `X` can be placed before `L` (50) and `C` (100) to make 40 and 90.
* `C` can be placed before `D` (500) and `M` (1000) to make 400 and 900.

Given an integer, convert it to a roman numeral.

**Example 1:**

**Input:** num = 3
**Output:**  "III "
**Explanation:** 3 is represented as 3 ones.

**Example 2:**

**Input:** num = 58
**Output:**  "LVIII "
**Explanation:** L = 50, V = 5, III = 3.

**Example 3:**

**Input:** num = 1994
**Output:**  "MCMXCIV "
**Explanation:** M = 1000, CM = 900, XC = 90 and IV = 4.

**Constraints:**

* `1 <= num <= 3999`

## Suggested Approach

```mbt nocheck
pub fn int_to_roman(num: Int) -> String {
  ...
}
```

## Solution

```mbt
pub fn int_to_roman(num : Int) -> String {
  let roman_map : Array[(Int, String)] = [
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I"),
  ]
  let mut result : String = "" // Make result mutable
  let mut remaining = num
  for i = 0; i < roman_map.length(); i = i + 1 {
    let (value, symbol) = roman_map[i]
    while remaining >= value {
      result = result + symbol
      remaining = remaining - value
    }
  }
  result
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(int_to_roman(3), "III")
}

test "example 2" {
  assert_eq(int_to_roman(58), "LVIII")
}

test "example 3" {
  assert_eq(int_to_roman(1994), "MCMXCIV")
}

test "additional cases" {
  assert_eq(int_to_roman(1), "I")
  assert_eq(int_to_roman(4), "IV")
  assert_eq(int_to_roman(9), "IX")
  assert_eq(int_to_roman(10), "X")
  assert_eq(int_to_roman(40), "XL")
  assert_eq(int_to_roman(90), "XC")
  assert_eq(int_to_roman(400), "CD")
  assert_eq(int_to_roman(900), "CM")
  assert_eq(int_to_roman(3999), "MMMCMXCIX")
}
```
