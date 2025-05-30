---
difficulty: Medium
verified: true
---

# Gas Station

Given an array of integers `gas` and an array `cost`, where `gas[i]` is the amount of gas at station i, and `cost[i]` is the cost of gas to travel from station i to its next station (i+1). You have a car with an unlimited gas tank and it starts the journey with an empty tank at one of the gas stations.

Return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. It is guaranteed that if a solution exists, it is unique.

## Examples

### Example 1

- **Input:** `gas = [1,2,3,4,5], cost = [3,4,5,1,2]`
- **Output:** `3`
- **Explanation:** Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
Travel to station 4. Your tank = 4 - 1 + 5 = 8
Travel to station 0. Your tank = 8 - 2 + 1 = 7
Travel to station 1. Your tank = 7 - 3 + 2 = 6
Travel to station 2. Your tank = 6 - 4 + 3 = 5
Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
Therefore, return 3 as the starting index.

### Example 2

- **Input:** `gas = [2,3,4], cost = [3,4,3]`
- **Output:** `-1`
- **Explanation:** You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
Travel to station 0. Your tank = 4 - 3 + 2 = 3
Travel to station 1. Your tank = 3 - 3 + 3 = 3
You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
Therefore, you can't travel around the circuit once no matter where you start.

## Constraints

- `gas.length == n`
- `cost.length == n`
- `1 <= n <= 10^5`
- `0 <= gas[i], cost[i] <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn can_complete_circuit(gas: Array[Int], cost: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn can_complete_circuit(gas : Array[Int], cost : Array[Int]) -> Int {
  let n = gas.length()
  let mut i = n - 1
  let mut j = n - 1
  let mut cnt = 0
  let mut s = 0
  while cnt < n {
    s += gas[j] - cost[j]
    cnt += 1
    j = (j + 1) % n
    while s < 0 && cnt < n {
      i -= 1
      s += gas[i] - cost[i]
      cnt += 1
    }
  }
  if s < 0 {
    -1
  } else {
    i
  }
}
```

## Tests

```moonbit
test "example 1" {
  let gas = [1, 2, 3, 4, 5]
  let cost = [3, 4, 5, 1, 2]
  assert_eq(can_complete_circuit(gas, cost), 3)
}

test "example 2" {
  let gas = [2, 3, 4]
  let cost = [3, 4, 3]
  assert_eq(can_complete_circuit(gas, cost), -1)
}
```
