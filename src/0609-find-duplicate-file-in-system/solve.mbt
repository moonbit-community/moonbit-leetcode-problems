// main solution
///|
struct Solution {
  a : Array[Int]
  dp : Array[Array[Int]]
}

///|
fn Solution::new() -> Solution {
  { a: Array::make(33, 0), dp: Array::make(33, Array::make(2, -1)) }
}

///|
fn Solution::findIntegers(self : Solution, n : Int) -> Int {
  let mut len = 0
  let mut n = n
  while n > 0 {
    len = len + 1
    self.a[len] = n & 1
    n = n >> 1
  }
  self.dfs(len, 0, true)
}

///|
fn Solution::dfs(self : Solution, pos : Int, pre : Int, limit : Bool) -> Int {
  if pos <= 0 {
    return 1
  }
  if not(limit) && self.dp[pos][pre] != -1 {
    return self.dp[pos][pre]
  }
  let up = if limit { self.a[pos] } else { 1 }
  let mut ans = 0
  let mut i = 0
  while i <= up {
    if not(pre == 1 && i == 1) {
      ans = ans + self.dfs(pos - 1, i, limit && i == up)
    }
    i = i + 1
  }
  if not(limit) {
    self.dp[pos][pre] = ans
  }
  ans
}
