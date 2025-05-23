///|
fn single_number(nums : Array[Int]) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < 32 {
    let mut count = 0
    let mut j = 0
    while j < nums.length() {
      count = count + ((nums[j] >> i) & 1)
      j = j + 1
    }
    ans = ans | ((count % 3) << i)
    i = i + 1
  }
  ans
}
