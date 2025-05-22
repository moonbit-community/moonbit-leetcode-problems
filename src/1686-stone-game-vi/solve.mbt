fn stone_game_vi(alice_values : Array[Int], bob_values : Array[Int]) -> Int {
  let n = alice_values.length()
  let vals : Array[(Int, Int)] = []
  for i = 0; i < n; i = i + 1 {
    vals.append([(alice_values[i] + bob_values[i], i)])
  }
  vals.sort_by(fn(a, b) { a.0 - b.0 })
  let mut a = 0
  let mut b = 0
  for k = 0; k < n; k = k + 1 {
    let i = vals[k].1
    if k % 2 == 0 {
      a = a + alice_values[i]
    } else {
      b = b + bob_values[i]
    }
  }
  if a == b {
    0
  } else if a > b {
    1
  } else {
    -1
  }
}
