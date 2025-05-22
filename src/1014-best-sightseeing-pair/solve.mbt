fn max_score_sightseeing_pair(values : Array[Int]) -> Int {
  let mut ans = 0
  let mut mx = values[0]
  for j = 1; j < values.length(); j = j + 1 {
    ans = max(ans, values[j] - j + mx)
    mx = max(mx, values[j] + j)
  }
  ans
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
