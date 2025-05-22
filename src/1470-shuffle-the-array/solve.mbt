fn shuffle(nums : Array[Int], n : Int) -> Array[Int] {
  let ans = []
  let mut i = 0
  while i < n {
    ans.push(nums[i])
    ans.push(nums[n + i])
    i = i + 1
  }
  ans
}
