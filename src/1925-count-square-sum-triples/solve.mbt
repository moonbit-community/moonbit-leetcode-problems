fn count_square_sum_triples(n : Int) -> Int {
  let mut count = 0
  for a = 1; a <= n; a = a + 1 {
    for b = 1; b <= n; b = b + 1 {
      for c = 1; c <= n; c = c + 1 {
        if a * a + b * b == c * c {
          count = count + 1
        }
      }
    }
  }
  count
}
