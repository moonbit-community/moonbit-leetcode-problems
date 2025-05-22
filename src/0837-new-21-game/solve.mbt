fn new_21_game(n : Int, k : Int, max_pts : Int) -> Double {
  if k == 0 {
    return 1.0
  }
  let f : Array[Double] = Array::make(k + max_pts, 0.0)
  for i = k; i < min(n + 1, k + max_pts); i = i + 1 {
    f[i] = 1.0
  }
  f[k - 1] = min(n - k + 1, max_pts).to_double() * 1.0 / max_pts.to_double()
  let mut i = k - 2
  while i >= 0 {
    f[i] = f[i + 1] + (f[i + 1] - f[i + max_pts + 1]) / max_pts.to_double()
    i = i - 1
  }
  f[0]
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
