fn remove_duplicates(nums : Array[Int]) -> Unit {
  let n = nums.length()
  if n <= 2 {
    return
  }
  for slow = 2, fast = 2; fast < n; fast = fast + 1 {
    if nums[slow - 2] != nums[fast] {
      nums[slow] = nums[fast]
      continue slow + 1, fast + 1
    }
    continue slow, fast + 1
  }
}
