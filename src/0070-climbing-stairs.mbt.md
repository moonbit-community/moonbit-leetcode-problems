---
difficulty: Easy
verified: true
---

# Climbing Stairs

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

## Suggested Approach

```mbt nocheck
pub fn climb_stairs(n: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn climb_stairs(n : Int) -> Int {
  guard n >= 1 else { n }
  for i = 1, a = 1, b = 1; i < n; i = i + 1, a = b, b = a + b {

  } else {
    b
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(climb_stairs(2), 2)
}

test "example 2" {
  assert_eq(climb_stairs(3), 3)
}
```
