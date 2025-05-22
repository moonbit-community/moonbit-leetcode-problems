///|
fn sort(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let result : Array[Int] = Array::make(n, 0)
  // Copy elements to result array for sorting to avoid mutating the original array
  for i = 0; i < n; i = i + 1 {
    result[i] = nums[i]
  }
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      if result[i] > result[j] {
        let tmp = result[i]
        result[i] = result[j]
        result[j] = tmp
      }
    }
  }
  result
}

///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

///|
fn smallest_range_ii(nums : Array[Int], k : Int) -> Int {
  let sorted_nums = sort(nums)
  let n = sorted_nums.length()
  let mut ans = sorted_nums[n - 1] - sorted_nums[0]
  let mut i = 1
  while i < n {
    let mi = min(sorted_nums[0] + k, sorted_nums[i] - k)
    let mx = max(sorted_nums[i - 1] + k, sorted_nums[n - 1] - k)
    ans = min(ans, mx - mi)
    i = i + 1
  }
  ans
}
