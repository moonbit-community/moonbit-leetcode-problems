---
difficulty: Hard
verified: true
---

# Wildcard Matching

Given an input string (s) and a pattern (p), implement wildcard pattern matching with support for '?' and '*' where:

'?' Matches any single character.
'*' Matches any sequence of characters (including the empty sequence).

The matching should cover the entire input string (not partial).

Example 1:

Input: s = "aa", p = "a"
Output: false
Explanation: "a" does not match the entire string "aa".

Example 2:

Input: s = "aa", p = "*"
Output: true
Explanation: '*' matches any sequence.

Example 3:

Input: s = "cb", p = "?a"
Output: false
Explanation: '?' matches 'c', but the second letter is 'a', which does not match 'b'.

Constraints:

0 <= s.length, p.length <= 2000
s contains only lowercase English letters.
p contains only lowercase English letters, '?' or '*'.

## Suggested Approach

```mbt nocheck
pub fn is_match(s: String, p: String) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_match(s : String, p : String) -> Bool {
  let m = s.length()
  let n = p.length()
  let dp : Array[Array[Bool]] = Array::makei(m + 1, fn(_) {
    Array::make(n + 1, false)
  })
  dp[0][0] = true
  for j = 1; j <= n; j = j + 1 {
    if p[j - 1] == '*' {
      dp[0][j] = true
    } else {
      break
    }
  }
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      if p[j - 1] == '*' {
        dp[i][j] = dp[i][j - 1] || dp[i - 1][j]
      } else if p[j - 1] == '?' || s[i - 1] == p[j - 1] {
        dp[i][j] = dp[i - 1][j - 1]
      }
    }
  }
  dp[m][n]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(is_match("aa", "a"), false)
}

test "example 2" {
  assert_eq(is_match("aa", "*"), true)
}

test "example 3" {
  assert_eq(is_match("cb", "?a"), false)
}

test "example 4" {
  assert_eq(is_match("adceb", "*a*b"), true)
}

test "example 5" {
  assert_eq(is_match("acdcb", "a*c?b"), false)
}
```
