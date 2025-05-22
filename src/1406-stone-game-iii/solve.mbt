///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn stone_game_iii(stone_value : Array[Int]) -> String {
  let n = stone_value.length()
  let inf = 2_0000_0000
  let f : Array[Int] = Array::make(n, inf)
  fn dfs(
    i : Int,
    n : Int,
    stone_value : Array[Int],
    f : Array[Int],
    inf : Int
  ) -> Int {
    if i >= n {
      0
    } else {
      match f[i] {
        inf => {
          let mut ans : Int = -inf
          let mut s : Int = 0
          let mut j : Int = 0
          while j < 3 && i + j < n {
            s = s + stone_value[i + j]
            ans = max(ans, s - dfs(i + j + 1, n, stone_value, f, inf))
            j = j + 1
          }
          f[i] = ans
          ans
        }
      }
    }
  }

  let ans = dfs(0, n, stone_value, f, inf)
  if ans == 0 {
    "Tie"
  } else if ans > 0 {
    "Alice"
  } else {
    "Bob"
  }
}
