fn largest_perimeter(nums : Array[Int]) -> Int {
  nums.sort()
  let len = nums.length()
  for i = len - 1; i >= 2; i = i - 1 {
    let c = nums[i - 1] + nums[i - 2]
    if c > nums[i] {
      return c + nums[i]
    }
  }
  0
}
