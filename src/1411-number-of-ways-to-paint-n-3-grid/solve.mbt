fn num_of_ways(n : Int) -> Int {
  let mod = 1000000000 + 7
  let mut f0 = 6
  let mut f1 = 6
  for i = 1; i < n; i = i + 1 {
    let g0 = (3 * f0 + 2 * f1) % mod
    let g1 = (2 * f0 + 2 * f1) % mod
    f0 = g0
    f1 = g1
  }
  (f0 + f1) % mod
}
