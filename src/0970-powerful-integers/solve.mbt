///|
fn powerful_integers(x : Int, y : Int, bound : Int) -> Array[Int] {
  let mut ans_set : @immut/list.T[Int] = Nil
  let mut a = 1
  while a <= bound {
    let mut b = 1
    while a + b <= bound {
      // Check if `a + b` already exists in ans_set
      if not(ans_set.contains(a + b)) {
        ans_set = ans_set.concat(@immut/list.of([a + b]))
      }
      if y == 1 {
        break
      }
      b = b * y
    }
    if x == 1 {
      break
    }
    a = a * x
  }
  let ans_array : Array[Int] = ans_set.to_array()
  // Sorting the result to ensure consistent order, as HashSet does not maintain order
  ans_array.sort()
  ans_array
}
