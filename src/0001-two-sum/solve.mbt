fn two_sum(nums : Array[Int], target : Int) -> Array[Int] {
  let num_to_index : @hashmap.T[Int, Int] = @hashmap.new()
  for i = 0; i < nums.length(); i = i + 1 {
    let current_num = nums[i]
    let complement = target - current_num
    if num_to_index.contains(complement) {
      return [num_to_index.get(complement).or(-1), i]
    }
    num_to_index.set(current_num, i)
  }
  return []
}
