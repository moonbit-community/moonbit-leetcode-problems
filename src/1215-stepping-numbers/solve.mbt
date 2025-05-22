fn count_stepping_numbers(low : Int, high : Int) -> Array[Int] {
  let ans : Array[Int] = []
  if low == 0 {
    ans.push(0)
  }
  let q : Array[Int] = []
  let mut i = 1
  while i < 10 {
    q.push(i)
    i = i + 1
  }
  while not(q.is_empty()) {
    // As there's no direct "shift" operation, simulate it
    let v = q[0]
    let removed = q.remove(0)
    if v > high {
      break
    }
    if v >= low {
      ans.push(v)
    }
    let x = v % 10
    if x > 0 {
      q.push(v * 10 + x - 1)
    }
    if x < 9 {
      q.push(v * 10 + x + 1)
    }
  }
  let ans_array : Array[Int] = Array::make(ans.length(), 0)
  for i = 0; i < ans.length(); i = i + 1 {
    ans_array[i] = ans[i]
  }
  ans_array
}
