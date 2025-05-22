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
fn partition_disjoint(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mi : Array[Int] = Array::make(n + 1, 0)
  mi[n] = nums[n - 1]
  let mut i = n - 1
  while i >= 0 {
    mi[i] = min(nums[i], mi[i + 1])
    i = i - 1
  }
  let mut mx = 0
  i = 1
  while i <= n {
    let v = nums[i - 1]
    mx = max(mx, v)
    if mx <= mi[i] {
      return i
    }
    i = i + 1
  }
  return 0
}
