fn next_permutation(nums : Array[Int]) -> Bool {
  let mut i = nums.length() - 2
  while i >= 0 && nums[i] >= nums[i + 1] {
    i = i - 1
  }
  if i < 0 {
    return false
  }
  let mut j = nums.length() - 1
  while nums[j] <= nums[i] {
    j = j - 1
  }
  let temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
  let mut left = i + 1
  let mut right = nums.length() - 1
  while left < right {
    let temp = nums[left]
    nums[left] = nums[right]
    nums[right] = temp
    left = left + 1
    right = right - 1
  }
  return true
}

fn to_string(nums : Array[Int]) -> String {
  let result = Array::new()
  for i = 0; i < nums.length(); i = i + 1 {
    result.push(nums[i].to_string())
  }
  result.join("")
}

fn min_swaps(num : String, target : String) -> Int {
  let num_arr = Array::new()
  for i = 0; i < num.length(); i = i + 1 {
    num_arr.push(num[i].to_int())
  }
  let target_arr = Array::new()
  for i = 0; i < target.length(); i = i + 1 {
    target_arr.push(target[i].to_int())
  }
  let mut swaps = 0
  for i = 0; i < num_arr.length(); i = i + 1 {
    if num_arr[i] != target_arr[i] {
      let mut j = i + 1
      while j < num_arr.length() && num_arr[j] != target_arr[i] {
        j = j + 1
      }
      while j > i {
        let temp = num_arr[j]
        num_arr[j] = num_arr[j - 1]
        num_arr[j - 1] = temp
        swaps = swaps + 1
        j = j - 1
      }
    }
  }
  swaps
}

fn kth_smallest_wonderful_number(num : String, k : Int) -> String {
  let num_arr = Array::new()
  for i = 0; i < num.length(); i = i + 1 {
    num_arr.push(num[i].to_int())
  }
  for i = 0; i < k - 1; i = i + 1 {
    next_permutation(num_arr) |> ignore
  }
  to_string(num_arr)
}

fn min_adjacent_swaps_to_reach_kth_smallest_number(
  num : String,
  k : Int
) -> Int {
  let target = kth_smallest_wonderful_number(num, k)
  min_swaps(num, target)
}
