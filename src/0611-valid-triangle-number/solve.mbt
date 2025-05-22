///|
fn sort(nums : Array[Int]) -> Unit {
  for i = 0; i < nums.length(); i = i + 1 {
    for j = i + 1; j < nums.length(); j = j + 1 {
      if nums[i] > nums[j] {
        // Swap elements in array
        let tmp = nums[i]
        nums[i] = nums[j]
        nums[j] = tmp
      }
    }
  }
}

///|
fn triangle_number(nums : Array[Int]) -> Int {
  sort(nums)
  let n = nums.length()
  let mut res = 0
  for i = n - 1; i >= 2; i = i - 1 {
    let mut l = 0
    let mut r = i - 1
    while l < r {
      if nums[l] + nums[r] > nums[i] {
        res = res + r - l
        r = r - 1
      } else {
        l = l + 1
      }
    }
  }
  res
}
