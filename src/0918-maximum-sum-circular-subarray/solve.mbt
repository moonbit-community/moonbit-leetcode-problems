///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

///|
fn max_subarray_sum_circular(nums : Array[Int]) -> Int {
  let inf : Int = 2_0000_0000
  let mut pmi : Int = 0
  let mut pmx : Int = -inf
  let mut ans : Int = -inf
  let mut s : Int = 0
  let mut smi : Int = inf
  let mut i : Int = 0
  while i < nums.length() {
    let x : Int = nums[i]
    s = s + x
    ans = max(ans, s - pmi)
    smi = min(smi, s - pmx)
    pmi = min(pmi, s)
    pmx = max(pmx, s)
    i = i + 1
  }
  max(ans, s - smi)
}
