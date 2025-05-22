fn floor_div(x : Int, y : Int) -> Int {
  x / y
}

fn check(x : Int) -> Bool {
  let d = [0, 1, -1, -1, -1, -1, 9, -1, 8, 6]
  let mut y = 0
  let mut t = x
  while t > 0 {
    let v = t % 10
    if d[v] == -1 {
      return false
    }
    y = y * 10 + d[v]
    t = floor_div(t, 10)
  }
  x != y
}

fn dfs(pos : Int, limit : Bool, x : Int, s : String) -> Int {
  let d = [0, 1, -1, -1, -1, -1, 9, -1, 8, 6]
  if pos >= s.length() {
    return if check(x) { 1 } else { 0 }
  }
  let up = if limit { s[pos].to_int() } else { 9 }
  let mut ans = 0
  let mut i = 0
  while i <= up {
    if d[i] != -1 {
      ans = ans + dfs(pos + 1, limit && i == up, x * 10 + i, s)
    }
    i = i + 1
  }
  ans
}

fn confusing_number_ii(n : Int) -> Int {
  let s = n.to_string()
  dfs(0, true, 0, s)
}
