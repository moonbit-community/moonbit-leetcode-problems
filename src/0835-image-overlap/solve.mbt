struct Point {
  x : Int
  y : Int
}

fn largest_overlap(img1 : Array[Array[Int]], img2 : Array[Array[Int]]) -> Int {
  let n : Int = img1.length()
  let mut ans : Int = 0
  let overlaps : Array[Array[Int]] = Array::make(n * 2, Array::make(n * 2, 0))
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if img1[i][j] == 1 {
        for h = 0; h < n; h = h + 1 {
          for k = 0; k < n; k = k + 1 {
            if img2[h][k] == 1 {
              let delta = Point::{ x: h - i + n, y: k - j + n }
              overlaps[delta.x][delta.y] = overlaps[delta.x][delta.y] + 1
              if overlaps[delta.x][delta.y] > ans {
                ans = overlaps[delta.x][delta.y]
              }
            }
          }
        }
      }
    }
  }
  ans
}
