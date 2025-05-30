---
difficulty: Medium
verified: true
---

# Decode Ways

A message containing letters from A-Z can be encoded into numbers using the following mapping:

'A' -> "1"
'B' -> "2"
...
'Z' -> "26"

To decode an encoded message, all the digits must be grouped then mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "1110^6" can be mapped into:

- "AAJF" with the grouping (1 1 10 6)
- "KJF" with the grouping (11 10 6)

Note that the grouping (1 11 06) is invalid because "06" cannot be mapped into 'F' since "6" is different from "06".

Given a string `s` containing only digits, return the number of ways to decode it.

The test cases are generated so that the answer fits in a **32-bit** integer.

## Suggested Approach

```mbt nocheck
pub fn num_decodings(s: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn num_decodings(s : String) -> Int {
  let n = s.length()
  let f = Array::make(n + 1, 0)
  f[0] = 1
  for i = 1; i <= n; i = i + 1 {
    if s[i - 1] != '0' {
      f[i] += f[i - 1]
    }
    if i > 1 &&
      s[i - 2] != '0' &&
      (s[i - 2].to_int() - '0'.to_int()) * 10 +
      (s[i - 1].to_int() - '0'.to_int()) <=
      26 {
      f[i] += f[i - 2]
    }
  }
  f[n]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(num_decodings("12"), 2)
}

test "example 2" {
  assert_eq(num_decodings("226"), 3)
}

test "example 3" {
  assert_eq(num_decodings("06"), 0)
}
```
