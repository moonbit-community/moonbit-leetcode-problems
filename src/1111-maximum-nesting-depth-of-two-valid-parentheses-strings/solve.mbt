fn max_depth_after_split(seq : String) -> Array[Int] {
  let n = seq.length()
  let ans : Array[Int] = Array::make(n, 0)
  let mut x = 0
  for i = 0; i < n; i = i + 1 {
    if seq[i] == '(' {
      ans[i] = x.land(1)
      x = x + 1
    } else {
      x = x - 1
      ans[i] = x.land(1)
    }
  }
  ans
}
