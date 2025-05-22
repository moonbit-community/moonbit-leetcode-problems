fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn dfs(f : @hashmap.T[Int, Int], x : Int, v : Int) -> Int {
  if x >= v {
    return min(v * 2 - 1, (x - v) * 2)
  }
  match f.get(v) {
    Some(ans) => return ans
    None => ()
  }
  let mut k = 2
  let mut y : Int = x * x
  while y < v {
    y = y * x
    k = k + 1
  }
  let mut ans = k - 1 + dfs(f, x, v - y / x)
  if y - v < v {
    ans = min(ans, k + dfs(f, x, y - v))
  }
  f.set(v, ans)
  ans
}

fn least_ops_express_target(x : Int, target : Int) -> Int {
  let f : @hashmap.T[Int, Int] = @hashmap.new()
  dfs(f, x, target)
}
