fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn num_times_all_blue(flips : Array[Int]) -> Int {
  let mut ans = 0
  let mut mx = 0
  for i = 1; i <= flips.length(); i = i + 1 {
    mx = max(mx, flips[i - 1])
    if mx == i {
      ans = ans + 1
    }
  }
  ans
}
