fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn smallest_range_i(nums : Array[Int], k : Int) -> Int {
  let mut mx = 0
  let mut mi = 10000
  let mut index = 0
  while index < nums.length() {
    mx = max(mx, nums[index])
    mi = min(mi, nums[index])
    index = index + 1
  }
  max(0, mx - mi - k * 2)
}
