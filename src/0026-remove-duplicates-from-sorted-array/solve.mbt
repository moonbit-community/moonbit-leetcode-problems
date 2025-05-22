fn remove_duplicates(nums : Array[Int]) -> Int {
  let mut i = 0
  for j = 1; j < nums.length(); j = j + 1 {
    if nums[i] != nums[j] {
      i = i + 1
      nums[i] = nums[j]
    }
  }
  i + 1
}
