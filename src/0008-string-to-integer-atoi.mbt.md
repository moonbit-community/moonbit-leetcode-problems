---
difficulty: Medium
verified: true
---

# String to Integer (atoi)

Implement the `myAtoi(string s)` function, which converts a string to a 32-bit signed integer (similar to C/C++'s `atoi` function).

The algorithm for `myAtoi(string s)` is as follows:

1. Read in and ignore any leading whitespace.
2. Check if the next character (if not already at the end of the string) is `'-'` or `'+'`. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
3. Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
4. Convert these digits into an integer (i.e. `"123 " -> 123`, `"0032 " -> 32`). If no digits were read, then the integer is `0`. Change the sign as necessary (from step 2).
5. If the integer is out of the 32-bit signed integer range `[-2^31, 2^31 - 1]`, then clamp the integer so that it remains in the range. Specifically, integers less than `-2^31` should be clamped to `-2^31`, and integers greater than `2^31 - 1` should be clamped to `2^31 - 1`.
6. Return the integer as the final result.

**Note:**

* Only the space character `' '` is considered a whitespace character.
* **Do not ignore** any characters other than the leading whitespace or the rest of the string after the digits.

**Example 1:**

**Input:** s =  "42 "
**Output:** 42
**Explanation:** The underlined characters are what is read in, the caret is the current reader position.
Step 1:  "42 " (no characters read because there is no leading whitespace)
         ^
Step 2:  "42 " (no characters read because there is neither a '-' nor '+')
         ^
Step 3:  "42 " ( "42 " is read in)
           ^
The parsed integer is 42.
Since 42 is in the range \[-2^31, 2^31 - 1\], the final result is 42.

**Example 2:**

**Input:** s =  "   -42 "
**Output:** -42
**Explanation:**
Step 1:  "   \-42 " (leading whitespace is read and ignored)
            ^
Step 2:  "   \-42 " ('-' is read, so the result should be negative)
             ^
Step 3:  "   -42 " ( "42 " is read in)
               ^
The parsed integer is -42.
Since -42 is in the range \[-2^31, 2^31 - 1\], the final result is -42.

**Example 3:**

**Input:** s =  "4193 with words "
**Output:** 4193
**Explanation:**
Step 1:  "4193 with words " (no characters read because there is no leading whitespace)
         ^
Step 2:  "4193 with words " (no characters read because there is neither a '-' nor '+')
         ^
Step 3:  "4193 with words " ( "4193 " is read in; reading stops because the next character is a non-digit)
             ^
The parsed integer is 4193.
Since 4193 is in the range \[-2^31, 2^31 - 1\], the final result is 4193.

**Constraints:**

* `0 <= s.length <= 200`
* `s` consists of English letters (lower-case and upper-case), digits (`0-9`), `' '`, `'+'`, `'-'`, and `'.'`.

## Suggested Approach

```mbt nocheck
pub fn my_atoi(s: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn my_atoi(s : String) -> Int {
  let length = s.length()
  let mut index = 0
  let mut sign = 1
  let mut result = 0

  // Step 1: Ignore leading whitespace
  while index < length && s[index] == ' ' {
    index = index + 1
  }

  // Step 2: Check for sign
  if index < length && (s[index] == '-' || s[index] == '+') {
    if s[index] == '-' {
      sign = -1
    }
    index = index + 1
  }

  // Step 3: Read digits until non-digit character
  while index < length && (s[index] |> is_digit()) {
    let digit = s[index] |> to_digit()
    // Check for overflow
    if result > (2147483647 - digit) / 10 {
      return if sign == 1 { 2147483647 } else { -2147483648 }
    }
    result = result * 10 + digit
    index = index + 1
  }

  // Step 4: Apply sign
  result * sign
}

// Helper function to check if a character is a digit
pub fn is_digit(c : Char) -> Bool {
  c >= '0' && c <= '9'
}

// Helper function to convert a character to a digit
pub fn to_digit(c : Char) -> Int {
  c.to_int() - '0'.to_int()
}

// Test cases
```

## Tests

```moonbit
test "example 1" {
  assert_eq(my_atoi("42 "), 42)
}

test "example 2" {
  assert_eq(my_atoi("   -42 "), -42)
}

test "example 3" {
  assert_eq(my_atoi("4193 with words "), 4193)
}

test "example 4" {
  assert_eq(my_atoi("words and 987 "), 0)
}

test "example 5" {
  assert_eq(my_atoi("-91283472332 "), -2147483648)
}

test "example 6" {
  assert_eq(my_atoi("3.14159 "), 3)
}

test "example 7" {
  assert_eq(my_atoi(" "), 0)
}

test "example 8" {
  assert_eq(my_atoi("+1 "), 1)
}
```
