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
fn min_start_value(nums : Array[Int]) -> Int {
  let mut sum = 0
  let mut min_val = 2147483647 // Represents Infinity in this context
  let nums_len = nums.length()
  for i = 0; i < nums_len; i = i + 1 {
    let num = nums[i]
    sum = sum + num
    min_val = min(min_val, sum)
  }
  max(1, 1 - min_val)
}
