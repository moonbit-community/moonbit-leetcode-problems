fn circular_permutation(n : Int, start : Int) -> Array[Int] {
  let ans : Array[Int] = []
  let mut i = 0
  while i < (1).lsl(n) {
    ans.push(i.lxor(i / 2).lxor(start))
    i = i + 1
  }
  ans
}
