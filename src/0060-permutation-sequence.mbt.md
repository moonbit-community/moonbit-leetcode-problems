---
difficulty: Hard
verified: true
---

# Permutation Sequence

The set [1, 2, 3, ..., n] contains a total of n! unique permutations.
By listing and labeling all of the permutations in order, we get the following sequence for `n = 3`:

```plaintext
"123"
"132"
"213"
"231"
"312"
"321"
```

Given n and k, return the kth permutation sequence.

Example 1:
Input: n = 3, k = 3
Output: "213"
Example 2:
Input: n = 4, k = 9
Output: "2314"
Example 3:
Input: n = 3, k = 1
Output: "123"

Constraints:

- `1 <= n <= 9`
- `1 <= k <= n!`

## Suggested Approach

```mbt nocheck
pub fn get_permutation(n: Int, k: Int) -> String {
  ...
}
```

## Solution

```mbt
pub fn get_permutation(n : Int, k : Int) -> String {
  let fac = Array::make(n, 0)
  fac[0] = 1
  for i = 1; i < n; i = i + 1 {
    fac[i] = fac[i - 1] * i
  }
  let mut k = k - 1
  let mut ans = ""
  let valid = Array::make(n + 1, 1)
  for i = 1; i <= n; i = i + 1 {
    let mut order = k / fac[n - i] + 1
    for j = 1; j <= n; j = j + 1 {
      order -= valid[j]
      if order == 0 {
        ans += j.to_string()
        valid[j] = 0
        break
      }
    }
    k %= fac[n - i]
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(get_permutation(3, 3), "213")
}

test "example 2" {
  assert_eq(get_permutation(4, 9), "2314")
}

test "example 3" {
  assert_eq(get_permutation(3, 1), "123")
}
```
