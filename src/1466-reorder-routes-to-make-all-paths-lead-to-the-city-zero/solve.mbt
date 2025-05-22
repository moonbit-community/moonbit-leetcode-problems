///|
fn dfs(g : Array[Array[(Int, Int)]], a : Int, fa : Int) -> Int {
  let mut ans = 0
  for i = 0; i < g[a].length(); i = i + 1 {
    let (b, c) = g[a][i]
    if b != fa {
      ans = ans + c + dfs(g, b, a)
    }
  }
  ans
}

///|
fn min_reorder(n : Int, connections : Array[(Int, Int)]) -> Int {
  let g : Array[Array[(Int, Int)]] = Array::make(n, [])
  g.push(connections)
  dfs(g, 0, -1)
}
