///|
fn subsets(nums : Array[Int]) -> Array[Array[Int]] {
  let t : Array[Int] = []
  let ans : Array[Array[Int]] = []
  let n = nums.length()
  for mask = 0; mask < (1 << n); mask = mask + 1 {
    t.clear()
    for i = 0; i < n; i = i + 1 {
      let cur = 1 << i
      if (mask & cur) > 0 {
        t.push(nums[i])
      }
    }
    // make a copy
    let t_clone = Array::copy(t)
    ans.push(t_clone)
  }
  ans
}
