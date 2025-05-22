struct Point {
  x : Int
  y : Int
}

fn map_of_highest_peak(is_water : Array[Array[Int]]) -> Array[Array[Int]] {
  let m = is_water.length()
  let n = is_water[0].length()
  let height = Array::make(m, Array::make(n, -1))
  let queue = Array::new()

  // Initialize the queue with all water cells
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if is_water[i][j] == 1 {
        height[i][j] = 0
        queue.push(Point::{ x: i, y: j })
      }
    }
  }

  // Directions for moving in the matrix (up, down, left, right)
  let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

  // Perform BFS to assign heights
  while queue.length() > 0 {
    let current = queue.pop()
    match current {
      Some(point) => {
        let x = point.x
        let y = point.y
        for i = 0; i < directions.length(); i = i + 1 {
          let dir = directions[i]
          let new_x = x + dir.0
          let new_y = y + dir.1
          if new_x >= 0 && new_x < m && new_y >= 0 && new_y < n && height[new_x][new_y] ==
          -1 {
            height[new_x][new_y] = height[x][y] + 1
            queue.push(Point::{ x: new_x, y: new_y })
          }
        }
      }
      None => ()
    }
  }
  height
}
