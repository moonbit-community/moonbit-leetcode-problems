///|
fn subsets_with_dup(nums : Array[Int]) -> Array[Array[Int]] {
  nums.sort()
  let n = nums.length()
  let t : Array[Int] = []
  let ans : Array[Array[Int]] = []
  for mask = 0; mask < (1 << n); mask = mask + 1 {
    t.clear()
    let mut flag = true
    for i = 0; i < n; i = i + 1 {
      if (mask & (1 << i)) != 0 {
        if i > 0 && (mask >> ((i - 1) & 1)) == 0 && nums[i] == nums[i - 1] {
          flag = false
          break
        }
        t.push(nums[i])
      }
    }
    if flag {
      // make a copy
      let t_copy = Array::copy(t)
      ans.push(t_copy)
    }
  }
  ans.dedup()
  ans
}
