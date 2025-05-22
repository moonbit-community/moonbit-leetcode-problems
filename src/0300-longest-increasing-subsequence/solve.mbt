fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn length_of_lis(nums : Array[Int]) -> Int {
  let n = nums.length()
  let f : Array[Int] = Array::make(n, 1)
  let mut i = 1
  while i < n {
    let mut j = 0
    while j < i {
      if nums[j] < nums[i] {
        f[i] = max(f[i], f[j] + 1)
      }
      j = j + 1
    }
    i = i + 1
  }
  let mut maxLen = 0
  i = 0
  while i < n {
    maxLen = max(maxLen, f[i])
    i = i + 1
  }
  maxLen
}
