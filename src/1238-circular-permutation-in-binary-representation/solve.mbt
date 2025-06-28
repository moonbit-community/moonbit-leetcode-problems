///|
fn circular_permutation(n : Int, start : Int) -> Array[Int] {
  let ans : Array[Int] = []
  let mut i = 0
  while i < 1 << n {
    ans.push(i ^ (i / 2) ^ start)
    i = i + 1
  }
  ans
}
