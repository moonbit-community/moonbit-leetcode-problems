///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn shortest_distance_color(
  colors : Array[Int],
  queries : @immut/list.T[(Int, Int)]
) -> @immut/list.T[Int] {
  let n = colors.length()
  let inf = @int.max_value
  let right : Array[Array[Int]] = Array::make(n + 1, Array::make(3, inf))
  let left : Array[Array[Int]] = Array::make(n + 1, Array::make(3, -inf))
  for i = n - 1; i >= 0; i = i - 1 {
    for j = 0; j < 3; j = j + 1 {
      right[i + 1][j] = right[i + 2][j]
    }
    right[i + 1][colors[i] - 1] = i
  }
  for i = 1; i <= n; i = i + 1 {
    for j = 0; j < 3; j = j + 1 {
      left[i][j] = left[i - 1][j]
    }
    left[i][colors[i - 1] - 1] = i - 1
  }
  let ans : Array[Int] = []
  queries.each(fn(query) {
    let (i, c) = query
    let d = min(i - left[i + 1][c - 1], right[i][c - 1] - i)
    ans.push(if d > n { -1 } else { d })
  })
  @immut/list.from_array(ans)
}
