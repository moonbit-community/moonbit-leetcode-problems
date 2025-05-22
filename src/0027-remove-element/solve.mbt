fn remove_element(nums : Array[Int], val : Int) -> Int {
  for i = 0, k = 0
      i < nums.length()
      i = i + 1, k = if nums[i] != val {
          nums[k] = nums[i]
          k + 1
        } else {
          k
        } {

  } else {
    k
  }
}
