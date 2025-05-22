///|
fn construct_array(n : Int, k : Int) -> Array[Int] {
  let ans : Array[Int] = Array::make(n, 0)
  let mut l = 1
  let mut r = n
  let mut i = 0
  while i < k {
    if i % 2 == 0 {
      ans[i] = l
      l = l + 1
    } else {
      ans[i] = r
      r = r - 1
    }
    i = i + 1
  }
  while i < n {
    if k % 2 == 0 {
      ans[i] = r
      r = r - 1
    } else {
      ans[i] = l
      l = l + 1
    }
    i = i + 1
  }
  ans
}
