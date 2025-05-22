fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn stone_game_ii(piles : Array[Int]) -> Int {
  let n = piles.length()
  let f = Array::make(n, Array::make(n + 1, 0)) // 2D array initialization
  let s = Array::make(n + 1, 0)
  for i = 0; i < n; i = i + 1 {
    s[i + 1] = s[i] + piles[i]
  }
  fn dfs(
    piles : Array[Int],
    s : Array[Int],
    f : Array[Array[Int]],
    i : Int,
    m : Int,
    n : Int
  ) -> Int {
    if m * 2 >= n - i {
      return s[n] - s[i]
    }
    if f[i][m] != 0 {
      return f[i][m]
    }
    let mut res = 0
    for x = 1; x <= m * 2; x = x + 1 {
      res = max(res, s[n] - s[i] - dfs(piles, s, f, i + x, max(m, x), n))
    }
    f[i][m] = res
    res
  }

  dfs(piles, s, f, 0, 1, n)
}
