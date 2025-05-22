fn xor_reduce(nums : Array[Int]) -> Int {
  let mut result = 0
  let n = nums.length()
  let mut i = 0
  while i < n {
    result = result.lxor(nums[i])
    i = i + 1
  }
  result
}

fn xor_game(nums : Array[Int]) -> Bool {
  nums.length() % 2 == 0 || xor_reduce(nums) == 0
}
