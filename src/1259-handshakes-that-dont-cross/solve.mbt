///|
fn number_of_ways(num_people : Int) -> Int {
  let mod = 1000000000 + 7
  let f : Array[Int] = Array::make(num_people + 1, 0)
  fn dfs(i : Int, f : Array[Int], mod : Int) -> Int {
    if i < 2 {
      1
    } else if f[i] != 0 {
      f[i]
    } else {
      let mut l = 0
      while l < i {
        let r = i - l - 2
        f[i] += dfs(l, f, mod) * dfs(r, f, mod) % mod
        f[i] %= mod
        l = l + 2
      }
      f[i]
    }
  }

  dfs(num_people, f, mod)
}
