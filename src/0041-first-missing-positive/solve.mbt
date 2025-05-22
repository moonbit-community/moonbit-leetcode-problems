fn first_missing_positive(nums : Array[Int]) -> Int {
  let n = nums.length()
  let new_nums = nums.map(
    fn(num) {
      let mut new_num = num
      if num <= 0 {
        new_num = n + 1
      }
      new_num
    },
  )
  for i = 0; i < n; i = i + 1 {
    let num = new_nums[i].abs()
    if num <= n {
      new_nums[num - 1] = -new_nums[num - 1].abs()
    }
  }
  for i = 0; i < n; i = i + 1 {
    if new_nums[i] > 0 {
      return i + 1
    }
  }
  n + 1
}
