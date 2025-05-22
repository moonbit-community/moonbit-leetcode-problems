///|
fn winner_square_game(n : Int) -> Bool {
  let f = Array::make(n + 1, -1)
  fn dfs(f : Array[Int], i : Int) -> Bool {
    if i <= 0 {
      return false
    }
    if f[i] != -1 {
      return f[i] == 1
    }
    let mut j = 1
    while j * j <= i {
      if not(dfs(f, i - j * j)) {
        f[i] = 1
        return true
      }
      j = j + 1
    }
    f[i] = 0
    return false
  }

  dfs(f, n)
}
