///|
struct Point {
  x : Int
  y : Int
} derive(Eq)

///|
fn fill(ans : Array[Array[Int]], value : Int) -> Unit {
  let m = ans.length()
  let n = ans[0].length()
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      ans[i][j] = value
      j = j + 1
    }
    i = i + 1
  }
}

///|
fn updateMatrix(mat : Array[Array[Int]]) -> Array[Array[Int]] {
  let m = mat.length()
  let n = mat[0].length()
  let ans : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  fill(ans, -1)
  let mut q : @immut/list.T[Point] = Nil
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if mat[i][j] == 0 {
        q = Cons({ x: i, y: j }, q)
        ans[i][j] = 0
      }
      j = j + 1
    }
    i = i + 1
  }
  fn within_bounds(x : Int, y : Int, m : Int, n : Int) -> Bool {
    x >= 0 && x < m && y >= 0 && y < n
  }

  let dirs : Array[Array[Int]] = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  while q != @immut/list.T::Nil {
    let p : Point = q.head_exn()
    q = q.tail()
    i = 0
    while i < dirs.length() {
      let x = p.x + dirs[i][0]
      let y = p.y + dirs[i][1]
      if within_bounds(x, y, m, n) && ans[x][y] == -1 {
        ans[x][y] = ans[p.x][p.y] + 1
        q = Cons({ x, y }, q)
      }
      i = i + 1
    }
  }
  ans
}
