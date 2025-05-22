fn sort_colors(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let mut ptr = 0
  for i = 0; i < n; i = i + 1 {
    if nums[i] == 0 {
      swap(nums, i, ptr)
      ptr += 1
    }
  }
  for i = ptr; i < n; i = i + 1 {
    if nums[i] == 1 {
      swap(nums, i, ptr)
      ptr += 1
    }
  }
  nums
}

fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
}
