---
difficulty: Medium
verified: true
---

# Permutations II

Given a collection of numbers, `nums`, that might contain duplicates, return _all possible unique permutations in any order_.

## Suggested Approach

```mbt nocheck
pub fn permute_unique(nums: Array[Int]) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn permute_unique(nums : Array[Int]) -> Array[Array[Int]] {
  let ans : Array[Array[Int]] = []
  let perm : Array[Int] = []
  let vis = Array::make(nums.length(), false)
  nums.sort()
  backtrack(nums, ans, 0, perm, vis)
  ans
}

pub fn backtrack(
  nums : Array[Int],
  ans : Array[Array[Int]],
  idx : Int,
  perm : Array[Int],
  vis : Array[Bool]
) -> Unit {
  if idx == nums.length() {
    let new_perm = Array::copy(perm)
    ans.push(new_perm)
    return
  }
  for i = 0; i < nums.length(); i = i + 1 {
    if vis[i] || (i > 0 && nums[i] == nums[i - 1] && not(vis[i - 1])) {
      continue i + 1
    }
    perm.push(nums[i])
    vis[i] = true
    backtrack(nums, ans, idx + 1, perm, vis)
    vis[i] = false
    perm.remove(idx) |> ignore
  }
}
```

## Tests

```moonbit
test "example 1" {
  inspect!(
    permute_unique([1, 1, 2]),
    content="[[1, 1, 2], [1, 2, 1], [2, 1, 1]]",
  )
}

test "example 2 " {
  inspect!(
    permute_unique([1, 2, 3]),
    content="[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]",
  )
}
```
