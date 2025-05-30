---
difficulty: Medium
verified: true
---

# Combination Sum

Given an array of **distinct** integers `candidates` and a target integer `target`, return a list of all unique combinations of `candidates` where the chosen numbers sum to `target`. You may return the combinations in any order.

The same number may be chosen from `candidates` an **unlimited number of times**. Two combinations are unique if the
frequency of at least one of the chosen numbers is different.

The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

## Suggested Approach

```mbt nocheck
pub fn combination_sum(candidates: Array[Int], target: Int) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn dfs(
  candidates : Array[Int],
  begin : Int,
  len : Int,
  target : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if target < 0 {
    return
  }
  if target == 0 {
    let new_path : Array[Int] = Array::new()
    path.each(fn(el) { new_path.push(el) })
    res.push(new_path) // need to clone the vec, otherwise path points to the same address and will be altered
    return
  }
  for i = begin; i < len; i = i + 1 {
    path.push(candidates[i])
    dfs(candidates, i, len, target - candidates[i], path, res)
    path.pop() |> ignore
  }
}

pub fn combination_sum(
  candidates : Array[Int],
  target : Int
) -> Array[Array[Int]] {
  let len = candidates.length()
  let res : Array[Array[Int]] = Array::new()
  let path : Array[Int] = Array::new()
  dfs(candidates, 0, len, target, path, res)
  res
}
```

## Tests

```moonbit
fn combination_sum1(
  candidates : Array[Int],
  target : Int
) -> @immut/sorted_set.T[@immut/sorted_set.T[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in combination_sum(candidates, target) {
    res = res.add(@immut/sorted_set.from_array(i))
  }
  res
}

test "example 1" {
  inspect!(
    combination_sum1([2, 3, 6, 7], 7),
    content="@immut/sorted_set.of([@immut/sorted_set.of([2, 3]), @immut/sorted_set.of([7])])",
  )
}

test "example 2" {
  inspect!(
    combination_sum1([2, 3, 5], 8),
    content="@immut/sorted_set.of([@immut/sorted_set.of([2]), @immut/sorted_set.of([2, 3]), @immut/sorted_set.of([3, 5])])",
  )
}

test "example 3" {
  inspect!(combination_sum1([2], 1), content="@immut/sorted_set.of([])")
}
```
