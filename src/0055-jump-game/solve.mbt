fn can_jump(nums : Array[Int]) -> Bool {
  let mut mx = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if mx < i {
      return false
    }
    mx = max(mx, i + nums[i])
  }
  true
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
