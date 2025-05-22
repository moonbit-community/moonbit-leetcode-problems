///|
fn kth_smallest_subarray_sum(nums : Array[Int], k : Int) -> Int {
  let min_element = nums.fold_left(
    fn(a, b) { @math.minimum(a, b) },
    init=nums[0],
  )
  let total_sum = nums.fold_left(fn(a, b) { a + b }, init=0)
  fn count_subarrays_less_than(mid : Int) -> Int {
    let mut count = 0
    let mut sum = 0
    let mut left = 0
    for right = 0; right < nums.length(); right = right + 1 {
      sum = sum + nums[right]
      while sum > mid {
        sum = sum - nums[left]
        left = left + 1
      }
      count = count + (right - left + 1)
    }
    count
  }

  let mut left = min_element
  let mut right = total_sum
  while left < right {
    let mid = left + (right - left) / 2
    if count_subarrays_less_than(mid) < k {
      left = mid + 1
    } else {
      right = mid
    }
  }
  left
}

// Test cases
