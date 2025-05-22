fn create_2d_array(
  rows : Int,
  cols : Int,
  default_value : Int
) -> Array[Array[Int]] {
  let result = Array::make(rows, Array::make(cols, 0))
  for i = 0; i < rows; i = i + 1 {
    for j = 0; j < cols; j = j + 1 {
      result[i][j] = default_value
    }
  }
  result
}

fn largest_number(cost : Array[Int], target : Int) -> String {
  let inf = 2_0000_0000
  let f = create_2d_array(10, target + 1, -inf)
  let g = create_2d_array(10, target + 1, 0)
  f[0][0] = 0
  for i = 1; i <= 9; i = i + 1 {
    let c = cost[i - 1]
    for j = 0; j <= target; j = j + 1 {
      if j < c || f[i][j - c] + 1 < f[i - 1][j] {
        f[i][j] = f[i - 1][j]
        g[i][j] = j
      } else {
        f[i][j] = f[i][j - c] + 1
        g[i][j] = j - c
      }
    }
  }
  if f[9][target] < 0 {
    "0"
  } else {
    let ans = []
    let mut i = 9
    let mut j = target
    while i > 0 {
      if g[i][j] == j {
        i = i - 1
      } else {
        ans.push(i)
        j = g[i][j]
      }
    }
    let mut result = ""
    ans.each(fn(num) { result = result + num.to_string() })
    result
  }
}
