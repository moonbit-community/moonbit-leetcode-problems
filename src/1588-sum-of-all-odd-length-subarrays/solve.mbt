///|
fn sum_odd_length_subarrays(arr : Array[Int]) -> Int {
  let n = arr.length()
  let mut ans = 0
  for i in 0..<n {
    let mut s = 0
    for j in i..<n {
      s = s + arr[j]
      if (j - i + 1) % 2 == 1 {
        ans = ans + s
      }
    }
  }
  ans
}
