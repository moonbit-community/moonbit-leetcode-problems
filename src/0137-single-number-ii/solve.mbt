fn single_number(nums : Array[Int]) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < 32 {
    let mut count = 0
    let mut j = 0
    while j < nums.length() {
      count = count + nums[j].lsr(i).land(1)
      j = j + 1
    }
    ans = ans.lor((count % 3).lsl(i))
    i = i + 1
  }
  ans
}
