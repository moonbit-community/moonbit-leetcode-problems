///|
fn count_pairs_with_xor_in_range(
  nums : Array[Int],
  low : Int,
  high : Int
) -> Int {
  let mut count = 0
  let n = nums.length()
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      let xor_value = nums[i] ^ nums[j]
      if xor_value >= low && xor_value <= high {
        count = count + 1
      }
    }
  }
  count
}
