fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let tmp = nums[i]
  nums[i] = nums[j]
  nums[j] = tmp
}

fn sort(nums : Array[Int], l : Int, r : Int, k : Int) -> Unit {
  if l >= r || l + 1 > k {
    return
  }
  swap(nums, l, l + (r - l) / 2) // Simplified pivot selection
  let num = nums[l]
  let mut mark = l
  let mut i = l + 1
  while i < r {
    if nums[i] > num {
      mark = mark + 1
      swap(nums, i, mark)
    }
    i = i + 1
  }
  swap(nums, l, mark)
  sort(nums, l, mark, k)
  sort(nums, mark + 1, r, k)
}

fn find_kth_largest(nums : Array[Int], k : Int) -> Int {
  sort(nums, 0, nums.length(), k)
  nums[k - 1]
}
