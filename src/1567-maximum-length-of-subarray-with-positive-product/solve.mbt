fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn get_max_len(nums : Array[Int]) -> Int {
  let mut n1 = if nums[0] > 0 { 1 } else { 0 }
  let mut n2 = if nums[0] < 0 { 1 } else { 0 }
  let mut ans = n1
  let len = nums.length()
  for i = 1; i < len; i = i + 1 {
    let cur = nums[i]
    if cur == 0 {
      n1 = 0
      n2 = 0
    } else if cur > 0 {
      n1 = n1 + 1
      n2 = if n2 > 0 { n2 + 1 } else { 0 }
    } else {
      let t1 = n1
      let t2 = n2
      n1 = if t2 > 0 { t2 + 1 } else { 0 }
      n2 = t1 + 1
    }
    ans = max(ans, n1)
  }
  ans
}
