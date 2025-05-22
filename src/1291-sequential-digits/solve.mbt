fn sequential_digits(low : Int, high : Int) -> Array[Int] {
  let mut ans : @immut/list.T[Int] = @immut/list.T::of([])
  for i = 1; i < 9; i = i + 1 {
    let mut x = i
    for j = i + 1; j < 10; j = j + 1 {
      x = x * 10 + j
      if x >= low && x <= high {
        ans = ans.concat(@immut/list.T::of([x]))
      }
    }
  }
  ans.sort().to_array()
}
