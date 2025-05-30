---
difficulty: Hard
verified: true
---

# Regular Expression Matching

Given an input string `s` and a pattern `p`, implement regular expression matching with support for `'.'` and `'*'` where:

* `'.'` Matches any single character.
* `'*'` Matches zero or more of the preceding element.

The matching should cover the **entire** input string (not partial).

**Example 1:**

**Input:** s =  "aa ", p =  "a "
**Output:** false
**Explanation:**  "a " does not match the entire string  "aa ".

**Example 2:**

**Input:** s =  "aa ", p =  "a\* "
**Output:** true
**Explanation:** '\*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes  "aa ".

**Example 3:**

**Input:** s =  "ab ", p =  ".\* "
**Output:** true
**Explanation:**  ".\* " means  "zero or more (\*) of any character (.) ".

**Constraints:**

* `1 <= s.length <= 20`
* `1 <= p.length <= 20`
* `s` contains only lowercase English letters.
* `p` contains only lowercase English letters, `'.'`, and `'*'`.
* It is guaranteed for each appearance of the character `'*'`, there will be a previous valid character to match.

## Suggested Approach

```mbt nocheck
pub fn is_match(s: String, p: String) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_match(s : String, p : String) -> Bool {
  let s_len = s.length()
  let p_len = p.length()
  let dp = Array::makei(s_len + 1, fn(_) { Array::make(p_len + 1, false) })
  dp[0][0] = true
  for j = 1; j <= p_len; j = j + 1 {
    if p[j - 1] == '*' {
      dp[0][j] = dp[0][j - 2]
    }
  }
  for i = 1; i <= s_len; i = i + 1 {
    for j = 1; j <= p_len; j = j + 1 {
      if p[j - 1] == '.' || p[j - 1] == s[i - 1] {
        dp[i][j] = dp[i - 1][j - 1]
      } else if p[j - 1] == '*' {
        dp[i][j] = dp[i][j - 2]
        if p[j - 2] == '.' || p[j - 2] == s[i - 1] {
          dp[i][j] = dp[i][j] || dp[i - 1][j]
        }
      }
    }
  }
  dp[s_len][p_len]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(is_match("aa", "a"), false)
}

test "example 2" {
  assert_eq(is_match("aa", "a*"), true)
}

test "example 3" {
  assert_eq(is_match("ab", ".*"), true)
}

test "example 4" {
  assert_eq(is_match("aab", "c*a*b"), true)
}

test "example 5" {
  assert_eq(is_match("mississippi", "mis*is*p*."), false)
}
```
