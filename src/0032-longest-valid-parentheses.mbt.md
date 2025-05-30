---
difficulty: Hard
verified: true
---

# Longest Valid Parentheses

Given a string containing just the characters `'('` and `')'`, return _the length of the longest valid (well-formed) parentheses_ _substring_.

## Examples

### Example 1

Input: `s = "(()"`
Output: `2`
Explanation: The longest valid parentheses substring is `"()"`.

### Example 2

Input: `s = ")()())"`
Output: `4`
Explanation: The longest valid parentheses substring is `"()()"`.

### Example 3

Input: `s = ""`
Output: `0`

## Constraints

- `0 <= s.length <= 3 * 10^4`
- `s[i]` is `'('`, or `')'`.

## Suggested Approach

```mbt nocheck
pub fn longest_valid_parentheses(s: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

pub fn longest_valid_parentheses(s : String) -> Int {
  let mut max_length = 0
  let stack : Array[Int] = Array::new()
  stack.push(-1)
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == '(' {
      stack.push(i)
    } else {
      stack.pop() |> ignore
      if stack.is_empty() {
        stack.push(i)
      } else {
        max_length = max(max_length, i - stack.get(stack.length() - 1).or(0))
      }
    }
  }
  max_length
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(longest_valid_parentheses("(()"), 2)
}

test "example 2" {
  assert_eq(longest_valid_parentheses(")()())"), 4)
}

test "example 3" {
  assert_eq(longest_valid_parentheses(""), 0)
}

// Additional Tests

test "all open parentheses" {
  assert_eq(longest_valid_parentheses("(((((("), 0)
}

test "all closed parentheses" {
  assert_eq(longest_valid_parentheses(")))))"), 0)
}

test "valid surrounded by invalid" {
  assert_eq(longest_valid_parentheses(")()()("), 4)
}
```
