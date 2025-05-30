---
difficulty: Hard
verified: true
---

# Distinct Subsequences

Given two strings s and t, return the number of distinct subsequences of s which equals t.
The test cases are generated so that the answer fits on a 32-bit signed integer.

Example 1:

Input: s = "rabbbit", t = "rabbit"
Output: 3
Explanation:
As shown below, there are 3 ways you can generate "rabbit" from s.
rabbbit
rabbbit
rabbbit

Example 2:

Input: s = "babgbag", t = "bag"
Output: 5
Explanation:
As shown below, there are 5 ways you can generate "bag" from s.
babgbag
babgbag
babgbag
babgbag
babgbag

Constraints:

1 <= s.length, t.length <= 1000
s and t consist of English letters.

## Suggested Approach

```mbt nocheck
pub fn num_distinct(s: String, t: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn num_distinct(s : String, t : String) -> Int {
  let n : Int = t.length()
  let f : Array[Int] = Array::make(n + 1, 0)
  f[0] = 1
  let mut i : Int = 0
  while i < s.length() {
    let a : Char = s[i]
    let mut j : Int = n
    while j > 0 {
      let b : Char = t[j - 1]
      if a == b {
        f[j] = f[j] + f[j - 1]
      }
      j = j - 1
    }
    i = i + 1
  }
  f[n]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(num_distinct("rabbbit", "rabbit"), 3)
}

test "example 2" {
  assert_eq(num_distinct("babgbag", "bag"), 5)
}
```
