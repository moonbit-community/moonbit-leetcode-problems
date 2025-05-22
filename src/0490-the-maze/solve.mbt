struct Point {
  x : Int
  y : Int
}

fn dfs(
  maze : Array[Array[Int]],
  vis : Array[Array[Bool]],
  current : Point,
  destination : Point,
  m : Int,
  n : Int
) -> Unit {
  if vis[current.x][current.y] {
    return
  }
  vis[current.x][current.y] = true
  if current.x == destination.x && current.y == destination.y {
    return
  }
  let dirs : Array[Int] = [-1, 0, 1, 0, -1]
  let mut k : Int = 0
  while k < 4 {
    let mut x : Int = current.x
    let mut y : Int = current.y
    let a : Int = dirs[k]
    let b : Int = dirs[k + 1]
    while x + a >= 0 && x + a < m && y + b >= 0 && y + b < n && maze[x + a][y + b] ==
          0 {
      x = x + a
      y = y + b
    }
    dfs(maze, vis, Point::{ x, y }, destination, m, n)
    k = k + 1
  }
}

fn has_path(
  maze : Array[Array[Int]],
  start : Array[Int],
  destination : Array[Int]
) -> Bool {
  let m : Int = maze.length()
  let n : Int = maze[0].length()
  let vis : Array[Array[Bool]] = Array::make(m, Array::make(n, false))
  let startPoint : Point = Point::{ x: start[0], y: start[1] }
  let endPoint : Point = Point::{ x: destination[0], y: destination[1] }
  dfs(maze, vis, startPoint, endPoint, m, n)
  vis[destination[0]][destination[1]]
}
