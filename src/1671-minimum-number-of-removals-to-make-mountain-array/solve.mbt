///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn minimum_mountain_removals(nums : Array[Int]) -> Int {
  let n = nums.length()
  let left = Array::make(n, 1)
  let right = Array::make(n, 1)

  // Calculate LIS from left
  for i = 1; i < n; i = i + 1 {
    for j = 0; j < i; j = j + 1 {
      if nums[i] > nums[j] {
        left[i] = max(left[i], left[j] + 1)
      }
    }
  }

  // Calculate LIS from right
  for i = n - 2; i >= 0; i = i - 1 {
    for j = i + 1; j < n; j = j + 1 {
      if nums[i] > nums[j] {
        right[i] = max(right[i], right[j] + 1)
      }
    }
  }
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    if left[i] > 1 && right[i] > 1 {
      ans = max(ans, left[i] + right[i] - 1)
    }
  }
  n - ans
}
