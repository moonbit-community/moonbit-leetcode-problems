///|
fn sum_of_unique_elements(nums : Array[Int]) -> Int {
  let count_map : @hashmap.T[Int, Int] = @hashmap.new()
  let nums_length = nums.length()

  // Count the occurrences of each element
  for i = 0; i < nums_length; i = i + 1 {
    let num = nums[i]
    count_map.set(num, count_map.get_or_default(num, 0) + 1)
  }
  let mut sum_unique = 0

  // Sum up the elements that appear exactly once
  count_map.each(fn(num, count) {
    if count == 1 {
      sum_unique = sum_unique + num
    }
  })
  sum_unique
}

// Test cases
