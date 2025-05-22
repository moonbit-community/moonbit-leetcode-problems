///|
fn sort_array(arr : Array[Int]) -> Unit {
  for i = 0; i < arr.length(); i = i + 1 {
    for j = i + 1; j < arr.length(); j = j + 1 {
      if arr[i] > arr[j] {
        // Swap elements
        let temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      }
    }
  }
}

///|
fn min_increment_for_unique(nums : Array[Int]) -> Int {
  sort_array(nums)
  let mut ans = 0
  let mut i = 1
  while i < nums.length() {
    if nums[i] <= nums[i - 1] {
      let d = nums[i - 1] - nums[i] + 1
      nums[i] = nums[i] + d
      ans = ans + d
    }
    i = i + 1
  }
  ans
}
