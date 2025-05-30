---
difficulty: Easy
verified: true
---

# Add Binary

Given two binary strings `a` and `b`, return their sum as a binary string.

## Suggested Approach

```mbt nocheck
pub fn add_binary(a: String, b: String) -> String {
  ...
}
```

## Solution

```mbt
pub fn add_binary(a : String, b : String) -> String {
  let mut reverse_ans = ""
  let mut ca = 0
  for i = a.length() - 1, j = b.length() - 1
      i >= 0 || j >= 0
      i = i - 1, j = j - 1 {
    let mut sum = ca
    if i >= 0 {
      sum += a[i].to_int() - '0'.to_int()
    }
    if j >= 0 {
      sum += b[j].to_int() - '0'.to_int()
    }
    reverse_ans += (sum % 2).to_string()
    ca = sum / 2
  }
  if ca == 1 {
    reverse_ans += ca.to_string()
  }
  let mut ans = ""
  for i = reverse_ans.length() - 1; i >= 0; i = i - 1 {
    ans += reverse_ans[i].to_string()
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(add_binary("11", "1"), "100")
}

test "example 2" {
  assert_eq(add_binary("1010", "1011"), "10101")
}
```
