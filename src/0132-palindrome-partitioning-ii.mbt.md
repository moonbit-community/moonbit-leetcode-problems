---
difficulty: Hard
verified: true
---

# Palindrome Partitioning II

Given a string s, partition s such that every substring of the partition is a palindrome.
Return the minimum cuts needed for a palindrome partitioning of s.

Example 1:

Input: s = "aab"
Output: 1
Explanation: The palindrome partitioning ["aa","b"] could be produced using 1 cut.

Example 2:

Input: s = "a"
Output: 0

Example 3:

Input: s = "ab"
Output: 1

Constraints:

1 <= s.length <= 2000
s consists of lowercase English letters only.

## Suggested Approach

```mbt nocheck
pub fn min_cut(s: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn min_cut(s : String) -> Int {
  let n = s.length()
  // Initializing the grid `g`.
  let g : Array[Array[Bool]] = Array::makei(n, fn(_) { Array::make(n, true) })
  let mut i = n - 1
  while i >= 0 {
    let mut j = i + 1
    while j < n {
      g[i][j] = s[i] == s[j] && g[i + 1][j - 1]
      j = j + 1
    }
    i = i - 1
  }

  // Initialize the `f` array to store the minimum cut needed.
  let f : Array[Int] = Array::make(n, 0)
  // Pre-fill `f` with the maximum initial cuts
  for i = 0; i < n; i = i + 1 {
    f[i] = i
  }
  for i = 1; i < n; i = i + 1 {
    for j = 0; j <= i; j = j + 1 {
      if g[j][i] {
        if j > 0 {
          f[i] = min(f[i], 1 + f[j - 1])
        } else {
          f[i] = min(f[i], 0)
        }
      }
    }
  }
  f[n - 1]
}

pub fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
```

## Tests

```moonbit
test "min cut of palindrome partitioning" {
  assert_eq(min_cut("aab"), 1)
  assert_eq(min_cut("a"), 0)
  assert_eq(min_cut("ab"), 1)
}
```
