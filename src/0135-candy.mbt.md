---
difficulty: Hard
verified: true
---

# Candy

There are n children standing in a line. Each child is assigned a rating value given in the integer array ratings.
You are giving candies to these children subjected to the following requirements:

Each child must have at least one candy.
Children with a higher rating get more candies than their neighbors.

Return the minimum number of candies you need to have to distribute the candies to the children.

Example 1:

Input: ratings = [1,0,2]
Output: 5
Explanation: You can allocate to the first, second and third child with 2, 1, 2 candies respectively.

Example 2:

Input: ratings = [1,2,2]
Output: 4
Explanation: You can allocate to the first, second and third child with 1, 2, 1 candies respectively.
The third child gets 1 candy because it satisfies the above two conditions.

Constraints:

n == ratings.length
1 <= n <= 2 *10^4
0 <= ratings[i] <= 2* 10^4

## Suggested Approach

```mbt nocheck
pub fn candy(ratings: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn fill(array : Array[Int], value : Int, n : Int) -> Unit {
  let mut i = 0
  while i < n {
    array[i] = value
    i = i + 1
  }
}

pub fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

pub fn candy(ratings : Array[Int]) -> Int {
  let n = ratings.length()
  let left : Array[Int] = Array::make(n, 1)
  let right : Array[Int] = Array::make(n, 1)
  fill(left, 1, n)
  fill(right, 1, n)
  let mut i = 1
  while i < n {
    if ratings[i] > ratings[i - 1] {
      left[i] = left[i - 1] + 1
    }
    i = i + 1
  }
  let mut i = n - 2
  while i >= 0 {
    if ratings[i] > ratings[i + 1] {
      right[i] = right[i + 1] + 1
    }
    i = i - 1
  }
  let mut ans = 0
  let mut i = 0
  while i < n {
    ans = ans + max(left[i], right[i])
    i = i + 1
  }
  ans
}
```

## Tests

```moonbit
test "candy test 1" {
  assert_eq(candy([1, 0, 2]), 5)
}

test "candy test 2" {
  assert_eq(candy([1, 2, 2]), 4)
}

test "candy test 3" {
  assert_eq(candy([1, 3, 2, 2, 1]), 7)
}
```
