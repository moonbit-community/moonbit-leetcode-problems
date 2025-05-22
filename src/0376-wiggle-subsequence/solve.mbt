///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn wiggle_max_length(nums : Array[Int]) -> Int {
  let up : Int = 1
  let down : Int = 1
  let mut i : Int = 1
  let n : Int = nums.length()
  while i < n {
    if nums[i] > nums[i - 1] {
      let up = max(up, down + 1)

    } else if nums[i] < nums[i - 1] {
      let down = max(down, up + 1)

    }
    i = i + 1
  }
  max(up, down)
}
