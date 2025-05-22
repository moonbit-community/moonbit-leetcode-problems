fn sum(from : Int, to : Int, card_points : Array[Int]) -> Int {
  let mut result = 0
  for i = from; i < to; i = i + 1 {
    result = result + card_points[i]
  }
  result
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn max_score(card_points : Array[Int], k : Int) -> Int {
  let n = card_points.length()
  let mut s = sum(n - k, n, card_points)
  let mut ans = s
  for i = 0; i < k; i = i + 1 {
    s = s + card_points[i] - card_points[n - k + i]
    ans = max(ans, s)
  }
  ans
}
