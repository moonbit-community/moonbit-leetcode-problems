///|
fn get_maximum_generated(n : Int) -> Int {
  if n == 0 {
    0
  } else {
    let nums = Array::make(n + 1, 0)
    nums[1] = 1
    for i = 2; i < n + 1; i = i + 1 {
      nums[i] = if (i & 1) == 0 {
        nums[i >> 1]
      } else {
        nums[i >> 1] + nums[i >> (1 + 1)]
      }
    }
    let mut max_val = 0
    for i = 0; i < n + 1; i = i + 1 {
      let val = nums[i]
      if val > max_val {
        max_val = val
      }
    }
    max_val
  }
}
