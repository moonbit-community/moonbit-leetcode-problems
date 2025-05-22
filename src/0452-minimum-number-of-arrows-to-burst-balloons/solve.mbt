fn sort(points : Array[Array[Int]]) -> Array[Array[Int]] {
  let n : Int = points.length()
  let mut i : Int = 0
  while i < n {
    let mut j : Int = i
    while j > 0 && points[j][1] < points[j - 1][1] {
      // Swap points[j] and points[j-1]
      let tmp = points[j]
      points[j] = points[j - 1]
      points[j - 1] = tmp
      j = j - 1
    }
    i = i + 1
  }
  points
}

fn find_min_arrow_shots(points : Array[Array[Int]]) -> Int {
  let sorted_points = sort(points)
  let mut ans : Int = 0
  let mut last : Int = -1073741824 // Equivalent to -(1L.lsl(30)) to avoid 64-bit overflow issue in the provided context
  let n : Int = sorted_points.length()
  let mut i : Int = 0
  while i < n {
    let a : Int = sorted_points[i][0]
    let b : Int = sorted_points[i][1]
    if a > last {
      ans = ans + 1
      last = b
    }
    i = i + 1
  }
  ans
}
