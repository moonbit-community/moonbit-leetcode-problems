///|
fn missing_number(nums : Array[Int]) -> Int {
  let n = nums.length() // Length of the input array
  let mut ans = n
  for i = 0; i < n; i = i + 1 {
    ans = ans + i - nums[i] // Calculate the missing number
  }
  ans
}
