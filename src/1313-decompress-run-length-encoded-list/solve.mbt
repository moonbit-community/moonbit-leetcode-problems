fn decompress_rle_list(nums : Array[Int]) -> Array[Int] {
  let n = nums.length() / 2
  let ans : Array[Int] = []
  let mut i = 0
  while i < n {
    let freq = nums[2 * i]
    let val = nums[2 * i + 1]
    let mut j = 0
    while j < freq {
      ans.push(val)
      j = j + 1
    }
    i = i + 1
  }
  let result = Array::make(ans.length(), 0)
  for i = 0; i < ans.length(); i = i + 1 {
    result[i] = ans[i]
  }
  result
}
