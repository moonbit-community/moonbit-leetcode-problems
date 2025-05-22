///|
struct Solution {
  m : Int
  n : Int
  grid : Array[Array[Int]]
}

///|
fn Solution::num_magic_squares_inside(self : Solution) -> Int {
  let mut ans = 0
  for i = 0; i < self.m; i = i + 1 {
    for j = 0; j < self.n; j = j + 1 {
      ans = ans + self.check(i, j)
    }
  }
  ans
}

///|
fn Solution::check(self : Solution, i : Int, j : Int) -> Int {
  if i + 3 > self.m || j + 3 > self.n {
    return 0
  }
  let cnt : Array[Int] = Array::make(16, 0)
  let row : Array[Int] = Array::make(3, 0)
  let col : Array[Int] = Array::make(3, 0)
  let mut a = 0
  let mut b = 0
  for x = i; x < i + 3; x = x + 1 {
    for y = j; y < j + 3; y = y + 1 {
      let v = self.grid[x][y]
      cnt[v] = cnt[v] + 1
      if v < 1 || v > 9 || cnt[v] > 1 {
        return 0
      }
      row[x - i] = row[x - i] + v
      col[y - j] = col[y - j] + v
      if x - i == y - j {
        a = a + v
      }
      if x - i + y - j == 2 {
        b = b + v
      }
    }
  }
  if a != b {
    return 0
  }
  for k = 0; k < 3; k = k + 1 {
    if row[k] != a || col[k] != a {
      return 0
    }
  }
  1
}
