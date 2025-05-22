fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn increasing_triplet(nums : Array[Int]) -> Bool {
  let n = nums.length()
  let lmi : Array[Int] = Array::make(n, 0)
  let rmx : Array[Int] = Array::make(n, 0)
  let int_max = 2147483647
  let int_min = -2147483648
  lmi[0] = int_max
  rmx[n - 1] = int_min
  let mut i = 1
  while i < n {
    lmi[i] = min(lmi[i - 1], nums[i - 1])
    i = i + 1
  }
  i = n - 2
  while i >= 0 {
    rmx[i] = max(rmx[i + 1], nums[i + 1])
    i = i - 1
  }
  i = 0
  while i < n {
    if lmi[i] < nums[i] && nums[i] < rmx[i] {
      return true
    }
    i = i + 1
  }
  false
}
