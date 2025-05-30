---
difficulty: Hard
verified: true
---

# Minimum Window Substring

Given two strings `s` and `t` of lengths `m` and `n` respectively, return the minimum window substring of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

The testcases will be generated such that the answer is _unique_.

## Suggested Approach

```mbt nocheck
pub fn min_window(s: String, t: String) -> String {
  ...
}
```

## Solution

```mbt
pub fn min_window(s : String, t : String) -> String {
  let ori : @hashmap.T[Char, Int] = @hashmap.new()
  let cnt : @hashmap.T[Char, Int] = @hashmap.new()
  let t_len = t.length()
  for i = 0; i < t_len; i = i + 1 {
    let c = t[i]
    ori.set(c, ori.get_or_default(c, 0) + 1)
  }
  let mut l = 0
  let mut r = -1
  let mut len = 2_0000_0000
  let mut ans_l = -1
  let mut ans_r = -1
  let s_len = s.length()
  while r < s_len {
    r += 1
    if r < s_len && ori.contains(s[r]) {
      cnt.set(s[r], cnt.get_or_default(s[r], 0) + 1)
    }
    while check(ori, cnt) && l <= r {
      if r - l + 1 < len {
        len = r - l + 1
        ans_l = l
        ans_r = l + len
      }
      if ori.contains(s[l]) {
        cnt.set(s[l], cnt.get_or_default(s[l], 0) - 1)
      }
      l += 1
    }
  }
  if ans_l == -1 {
    return ""
  }
  return slice(s, ans_l, ans_r)
}

pub fn check(ori : @hashmap.T[Char, Int], cnt : @hashmap.T[Char, Int]) -> Bool {
  let mut res = true
  ori.each(fn(k, v) { if cnt.get_or_default(k, 0) < v { res = false } })
  res
}

pub fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(min_window("ADOBECODEBANC", "ABC"), "BANC")
}

test "example 2" {
  assert_eq(min_window("a", "a"), "a")
}

test "example 3" {
  assert_eq(min_window("a", "aa"), "")
}
```
