struct Solution {
  p : Array[Int]
  mut size : Int
}

fn Solution::find(self : Solution, x : Int) -> Int {
  let mut x = x
  while self.p[x] != x {
    x = self.p[x]
  }
  x
}

fn Solution::union(self : Solution, a : Int, b : Int) -> Unit {
  let pa = self.find(a)
  let pb = self.find(b)
  if pa == pb {
    return
  }
  self.p[pa] = pb
  self.size = self.size - 1
}

fn regions_by_slashes(grid : Array[String]) -> Int {
  let n = grid.length()
  let p : Array[Int] = Array::make(n * n * 4, 0)
  let solution = Solution::{ p, size: n * n * 4 }
  for i = 0; i < solution.size; i = i + 1 {
    solution.p[i] = i
  }
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let k = i * n + j
      if i < n - 1 {
        solution.union(4 * k + 2, (k + n) * 4)
      }
      if j < n - 1 {
        solution.union(4 * k + 1, (k + 1) * 4 + 3)
      }
      let v = grid[i][j]
      if v == '/' {
        solution.union(4 * k, 4 * k + 3)
        solution.union(4 * k + 1, 4 * k + 2)
      } else if v == '\\' {
        solution.union(4 * k, 4 * k + 1)
        solution.union(4 * k + 2, 4 * k + 3)
      } else {
        solution.union(4 * k, 4 * k + 1)
        solution.union(4 * k + 1, 4 * k + 2)
        solution.union(4 * k + 2, 4 * k + 3)
      }
    }
  }
  solution.size
}
