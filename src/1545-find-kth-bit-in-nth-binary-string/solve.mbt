///|
fn find_kth_bit(n : Int, k : Int) -> String {
  fn dfs(n : Int, k : Int) -> Int {
    if k == 1 {
      0
    } else if (k & (k - 1)) == 0 {
      1
    } else {
      let m = 1 << n
      if k * 2 < m - 1 {
        dfs(n - 1, k)
      } else {
        dfs(n - 1, m - k) ^ 1
      }
    }
  }

  dfs(n, k).to_string()
}
