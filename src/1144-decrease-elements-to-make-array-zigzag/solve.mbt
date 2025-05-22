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
fn moves_to_make_zigzag(nums : Array[Int]) -> Int {
  let ans : Array[Int] = [0, 0]
  let n = nums.length()
  for i = 0; i < 2; i = i + 1 {
    let mut j = i
    while j < n {
      let mut d = 0
      if j > 0 {
        d = max(d, nums[j] - nums[j - 1] + 1)
      }
      if j < n - 1 {
        d = max(d, nums[j] - nums[j + 1] + 1)
      }
      ans[i] = ans[i] + d
      j = j + 2
    }
  }
  min(ans[0], ans[1])
}
