///|
fn abs_diff(a : Int, b : Int) -> Int {
  if a > b {
    a - b
  } else {
    b - a
  }
}

///|
fn count_routes(
  locations : Array[Int],
  start : Int,
  finish : Int,
  fuel : Int
) -> Int {
  let n = locations.length()
  let mod = 1000000007
  // Initialize 2D array f with -1
  let f = Array::make(n, Array::make(fuel + 1, -1))
  fn dfs(
    i : Int,
    k : Int,
    locations : Array[Int],
    f : Array[Array[Int]],
    finish : Int,
    mod : Int
  ) -> Int {
    if k < abs_diff(locations[i], locations[finish]) {
      0
    } else if f[i][k] != -1 {
      f[i][k]
    } else {
      let n = locations.length()
      let mut ans = if i == finish { 1 } else { 0 }
      for j = 0; j < n; j = j + 1 {
        if j != i {
          let x = abs_diff(locations[i], locations[j])
          ans = (ans + dfs(j, k - x, locations, f, finish, mod)) % mod
        }
      }
      f[i][k] = ans
      ans
    }
  }

  dfs(start, fuel, locations, f, finish, mod)
}
