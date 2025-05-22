///|
fn max_operations(nums : Array[Int], k : Int) -> Int {
  let cnt_map : @hashmap.T[Int, Int] = @hashmap.new()
  let mut ans = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let num = nums[i]
    let complement = k - num
    if cnt_map.get(complement) != None && cnt_map.get(complement).unwrap() > 0 {
      cnt_map.set(complement, cnt_map.get(complement).unwrap() - 1)
      ans = ans + 1
    } else {
      cnt_map.set(num, cnt_map.get(num).unwrap() + 1)
    }
  }
  ans
}
