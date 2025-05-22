fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
}

fn reverse(nums : Array[Int], start : Int, end : Int) -> Array[Int] {
  let mut i = start
  let mut j = end
  while i < j {
    swap(nums, i, j)
    i = i + 1
    j = j - 1
  }
  nums
}

fn next_permutation(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let mut i = n - 2
  while i >= 0 && nums[i] >= nums[i + 1] {
    i -= 1
  }
  if i >= 0 {
    let mut j = n - 1
    while nums[j] <= nums[i] && j >= 0 {
      j = j - 1
    }
    swap(nums, i, j)
  }
  reverse(nums, i + 1, n - 1)
}
