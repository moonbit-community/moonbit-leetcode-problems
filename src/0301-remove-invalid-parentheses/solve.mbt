struct Solution {
  s : String
  n : Int
  mut ans : @immut/list.T[String]
}

fn dfs(
  self : Solution,
  i : Int,
  l : Int,
  r : Int,
  lcnt : Int,
  rcnt : Int,
  t : String
) -> Unit {
  if i == self.n {
    if l == 0 && r == 0 {
      self.ans = @immut/list.T::Cons(t, self.ans)
    }
    return
  }
  if self.n - i < l + r || lcnt < rcnt {
    return
  }
  let c = self.s.get(i).to_string()
  if c == "(" && l > 0 {
    dfs(self, i + 1, l - 1, r, lcnt, rcnt, t)
  }
  if c == ")" && r > 0 {
    dfs(self, i + 1, l, r - 1, lcnt, rcnt, t)
  }
  let x = if c == "(" { 1 } else { 0 }
  let y = if c == ")" { 1 } else { 0 }
  dfs(self, i + 1, l, r, lcnt + x, rcnt + y, t + c)
}

fn remove_invalid_parentheses(s : String) -> Solution {
  let n = s.length()
  let mut l = 0
  let mut r = 0
  let mut i = 0
  while i < n {
    match s.get(i).to_string() {
      "(" => l = l + 1
      ")" => if l > 0 { l = l - 1 } else { r = r + 1 }
      _ => ()
    }
    i = i + 1
  }
  let ans : @immut/list.T[String] = @immut/list.T::Nil
  let sol = Solution::{ s, n, ans }
  dfs(sol, 0, l, r, 0, 0, "")
  sol
}
