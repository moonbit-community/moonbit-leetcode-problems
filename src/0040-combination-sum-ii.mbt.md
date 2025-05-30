---
difficulty: Medium
verified: true
---

# Combination Sum II

Given a collection of candidate numbers (`candidates`) and a target number (`target`), find all unique combinations in `candidates` where the candidate numbers sum to `target`.

Each number in candidates may only be used once in the combination.

**Note**: The solution set must not contain duplicate combinations.

## Suggested Approach

```mbt nocheck
pub fn combination_sum2(candidates: Array[Int], target: Int) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn combination_sum2(candidates : Array[Int], target : Int) -> Array[Array[Int]] {
  let len = candidates.length()
  let res : Array[Array[Int]] = Array::new()
  if len == 0 {
    return res
  }
  candidates.sort()
  let path : Array[Int] = Array::new()
  dfs(candidates, len, 0, target, path, res)
  res
}

pub fn dfs(
  candidates : Array[Int],
  len : Int,
  begin : Int,
  target : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if target == 0 {
    let new_path = Array::copy(path)
    res.push(new_path)
    return
  }
  for i = begin; i < len; i = i + 1 {
    if target - candidates[i] < 0 {
      break
    }
    if i > begin && candidates[i] == candidates[i - 1] {
      continue i + 1
    }
    path.push(candidates[i])
    dfs(candidates, len, i + 1, target - candidates[i], path, res)
    path.pop() |> ignore
  }
}
```

## Tests

```moonbit
test "example 1" {
  inspect!(
    combination_sum2([10, 1, 2, 7, 6, 1, 5], 8),
    content="[[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]",
  )
}

test "example 2" {
  inspect!(combination_sum2([2, 5, 2, 1, 2], 5), content="[[1, 2, 2], [5]]")
}
```
