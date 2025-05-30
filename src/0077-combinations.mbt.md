---
difficulty: Medium
verified: true
---

# Combinations

Given two integers `n` and `k`, return all possible combinations of `k` numbers chosen from the range [1, n].

You may return the answer in any order.

## Suggested Approach

```mbt nocheck
pub fn combine(n: Int, k: Int) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn combine(n : Int, k : Int) -> Array[Array[Int]] {
  let res : Array[Array[Int]] = []
  if k <= 0 || n < k {
    return res
  }
  let path : Array[Int] = []
  dfs(n, k, 1, path, res)
  res
}

pub fn dfs(
  n : Int,
  k : Int,
  begin : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if path.length() == k {
    let new_path = Array::copy(path)
    res.push(new_path)
    return
  }
  for i = begin; i <= n; i = i + 1 {
    path.push(i)
    dfs(n, k, i + 1, path, res)
    path.pop() |> ignore
  }
}
```

## Tests

```moonbit
test "example 1" {
  inspect!(
    combine(4, 2),
    content="[[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]",
  )
}

test "example 2" {
  inspect!(combine(1, 1), content="[[1]]")
}
```
