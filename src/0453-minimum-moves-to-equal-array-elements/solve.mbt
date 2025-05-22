fn array_sum(nums : Array[Int]) -> Int {
  let mut sum = 0
  let mut i = 0
  while i < nums.length() {
    sum = sum + nums[i]
    i = i + 1
  }
  sum
}

fn min_element(nums : Array[Int]) -> Int {
  let mut min = nums[0]
  let mut i = 1
  while i < nums.length() {
    if nums[i] < min {
      min = nums[i]
    }
    i = i + 1
  }
  min
}

fn min_moves(nums : Array[Int]) -> Int {
  array_sum(nums) - min_element(nums) * nums.length()
}
