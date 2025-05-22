///|
struct Solution {
  mut p : Array[Int]
}

///|
fn Solution::num_similar_groups(self : Solution, strs : Array[String]) -> Int {
  let n = strs.length()
  self.p = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    self.p[i] = i
  }
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      if Solution::check(strs[i], strs[j]) {
        self.p[Solution::find(self, i)] = Solution::find(self, j)
      }
    }
  }
  let mut res = 0
  for i = 0; i < n; i = i + 1 {
    if i == Solution::find(self, i) {
      res = res + 1
    }
  }
  res
}

///|
fn Solution::check(a : String, b : String) -> Bool {
  let mut cnt = 0
  let n = a.length()
  for i = 0; i < n; i = i + 1 {
    if a[i] != b[i] {
      cnt = cnt + 1
    }
  }
  cnt <= 2
}

///|
fn Solution::find(self : Solution, x : Int) -> Int {
  if self.p[x] != x {
    self.p[x] = Solution::find(self, self.p[x])
  }
  self.p[x]
}
