fn max_non_overlapping(nums : Array[Int], target : Int) -> Int {
  let n = nums.length()
  let mut ans = 0
  let mut i = 0
  while i < n {
    let mut s = 0
    let vis = []
    vis.push(0)
    while i < n {
      s = s + nums[i]
      if vis.contains(s - target) {
        ans = ans + 1
        break
      }
      vis.push(s)
      i = i + 1
    }
    i = i + 1
  }
  ans
}
