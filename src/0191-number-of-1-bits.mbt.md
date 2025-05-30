---
difficulty: Easy
verified: true
---

# Number of 1 Bits

Write a function that takes the binary representation of an unsigned integer and returns the number of '1' bits it has (also known as the Hamming weight).
Note:

Note that in some languages, such as Java, there is no unsigned integer type. In this case, the input will be given as a signed integer type. It should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 3, the input represents the signed integer. -3.

Example 1:

Input: n = 00000000000000000000000000001011
Output: 3
Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.

Example 2:

Input: n = 00000000000000000000000010000000
Output: 1
Explanation: The input binary string 00000000000000000000000010000000 has a total of one '1' bit.

Example 3:

Input: n = 11111111111111111111111111111101
Output: 31
Explanation: The input binary string 11111111111111111111111111111101 has a total of thirty one '1' bits.

Constraints:

The input must be a binary string of length 32.

Follow up: If this function is called many times, how would you optimize it?

## Suggested Approach

```mbt nocheck
pub fn hamming_weight(n: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn hamming_weight(n : Int) -> Int {
  let mut n = n
  let mut ans = 0
  while n != 0 {
    n -= n & -n
    ans = ans + 1
  }
  ans
}
```

## Tests

```moonbit
test "examples" {
  assert_eq(hamming_weight(11), 3) // Binary representation of 11 is 1011, which has 3 '1's.
  assert_eq(hamming_weight(128), 1) // Binary representation of 128 is 10000000, which has 1 '1'.
  assert_eq(hamming_weight(0), 0) // Binary representation of 0 is 0, which has 0 '1's.
}
```
