---
difficulty: Hard
verified: true
---

# Edit Distance

Given two strings `word1` and `word2`, return the minimum number of operations required to convert `word1` to `word2`.

You have the following three operations permitted on a word:

- Insert a character
- Delete a character
- Replace a character

## Suggested Approach

```mbt nocheck
pub fn min_distance(word1: String, word2: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn min_distance(a : String, b : String) -> Int {
  let m = a.length()
  let n = b.length()
  let s = [[], []]
  // create Array of length n+1 with elements initialized to 0
  s[0] = Array::make(n + 1, 0)
  s[1] = Array::make(n + 1, 0)
  let mut j = 1
  while j <= n {
    s[0][j] = j
    j = j + 1
  }
  let mut i = 1
  while i <= m {
    s[i & 1][0] = i
    let mut j = 1
    while j <= n {
      s[i & 1][j] = if a[i - 1] == b[j - 1] {
        s[(i - 1) & 1][j - 1]
      } else {
        1 +
        @math.minimum(
          @math.minimum(s[(i - 1) & 1][j - 1], s[(i - 1) & 1][j]),
          s[i & 1][j - 1],
        )
      }
      j = j + 1
    }
    i = i + 1
  }
  s[m & 1][n]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(min_distance("horse", "ros"), 3)
}

test "example 2" {
  assert_eq(min_distance("intention", "execution"), 5)
}
```
