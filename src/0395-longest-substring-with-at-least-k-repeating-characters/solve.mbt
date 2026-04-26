///|
struct Solution {
  s : String
  k : Int
}

///|
fn Solution::longestSubstring(self : Solution) -> Int {
  self.dfs(0, self.s.length() - 1)
}

///|
fn Solution::dfs(self : Solution, l : Int, r : Int) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  let mut i = l
  while i <= r {
    let c = self.s.code_unit_at(i).to_int() - 'a'.to_int()
    cnt[c] = cnt[c] + 1
    i = i + 1
  }
  let mut split = 0
  i = 0
  while i < 26 {
    if cnt[i] > 0 && cnt[i] < self.k {
      split = i + 'a'.to_int()
      break
    }
    i = i + 1
  }
  if split == 0 {
    return r - l + 1
  }
  let mut ans = 0
  i = l
  while i <= r {
    while i <= r && self.s.code_unit_at(i).to_int() == split {
      i = i + 1
    }
    if i > r {
      break
    }
    let mut j = i
    while j <= r && self.s.code_unit_at(j).to_int() != split {
      j = j + 1
    }
    let t = self.dfs(i, j - 1)
    ans = if ans > t { ans } else { t }
    i = j
  }
  ans
}
