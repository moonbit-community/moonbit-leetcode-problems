///|
fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let t = nums[i]
  nums[i] = nums[j]
  nums[j] = t
}

///|
fn sort_array_by_parity_ii(nums : Array[Int]) -> Array[Int] {
  let mut i = 0
  let mut j = 1
  while i < nums.length() {
    if (nums[i] & 1) == 1 {
      while (nums[j] & 1) == 1 {
        j = j + 2
      }
      swap(nums, i, j)
    }
    i = i + 2
  }
  nums
}
