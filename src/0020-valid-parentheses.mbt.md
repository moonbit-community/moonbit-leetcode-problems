---
difficulty: Easy
verified: true
---

# Valid Parentheses

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

**Example 1:**

**Input:** s =  "() "
**Output:** true

**Example 2:**

**Input:** s =  "()\[\]{} "
**Output:** true

**Example 3:**

**Input:** s =  "(\] "
**Output:** false

**Constraints:**

* `1 <= s.length <= 10^4`
* `s` consists of parentheses only `'()[]{}'`.

## Suggested Approach

```mbt nocheck
pub fn is_valid(s: String) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_valid(s : String) -> Bool {
  let stack : Array[Char] = []
  let pairs : @hashmap.T[Char, Char] = @hashmap.new()
  pairs.set('(', ')')
  pairs.set('[', ']')
  pairs.set('{', '}')
  for i = 0; i < s.length(); i = i + 1 {
    let char = s[i]
    if pairs.contains(char) {
      stack.push(char)
    } else {
      if stack.length() == 0 {
        return false
      }
      let top = stack.pop().unwrap()
      if pairs.get_or_default(top, ' ') != char {
        return false
      }
    }
  }
  return stack.length() == 0
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(is_valid("()"), true)
}

test "example 2" {
  assert_eq(is_valid("()[]{}"), true)
}

test "example 3" {
  assert_eq(is_valid("(]"), false)
}

test "example 4" {
  assert_eq(is_valid("([)]"), false)
}

test "example 5" {
  assert_eq(is_valid("{[]}"), true)
}
```
