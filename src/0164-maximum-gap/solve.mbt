///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn maximum_gap(nums : Array[Int]) -> Int {
  let n = nums.length()
  if n < 2 {
    return 0
  }
  let inf = 2139062143 // equivalent to 0x3f3f3f3f
  let mut mi = inf
  let mut mx = -inf
  for i = 0; i < n; i = i + 1 {
    mi = min(mi, nums[i])
    mx = max(mx, nums[i])
  }
  let bucket_size = max(1, (mx - mi) / (n - 1))
  let bucket_count = (mx - mi) / bucket_size + 1
  let buckets : Array[Array[Int]] = Array::make(bucket_count, [inf, -inf])
  for i = 0; i < n; i = i + 1 {
    let idx = (nums[i] - mi) / bucket_size
    buckets[idx][0] = min(buckets[idx][0], nums[i])
    buckets[idx][1] = max(buckets[idx][1], nums[i])
  }
  let mut prev = inf
  let mut ans = 0
  for i = 0; i < bucket_count; i = i + 1 {
    if buckets[i][0] > buckets[i][1] {
      continue
    }
    ans = max(ans, buckets[i][0] - prev)
    prev = buckets[i][1]
  }
  ans
}
