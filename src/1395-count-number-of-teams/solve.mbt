fn num_teams(rating : Array[Int]) -> Int {
  let mut ans = 0
  let n = rating.length()
  for i = 0; i < n; i = i + 1 {
    let mut l = 0
    let mut r = 0
    for j = 0; j < i; j = j + 1 {
      if rating[j] < rating[i] {
        l = l + 1
      }
    }
    for j = i + 1; j < n; j = j + 1 {
      if rating[j] > rating[i] {
        r = r + 1
      }
    }
    ans = ans + l * r
    ans = ans + (i - l) * (n - i - 1 - r)
  }
  ans
}
