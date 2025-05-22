///|
fn total_hamming_distance(nums : Array[Int]) -> Int {
  let mut ans : Int = 0
  let mut i : Int = 0
  while i < 31 {
    let mut a : Int = 0
    let mut b : Int = 0
    let mut j : Int = 0
    while j < nums.length() {
      let v : Int = nums[j]
      let t : Int = v.lsr(i) & 1
      a = a + t
      b = b + (t ^ 1)
      j = j + 1
    }
    ans = ans + a * b
    i = i + 1
  }
  ans
}
