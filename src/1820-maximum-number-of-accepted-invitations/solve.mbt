///|
fn max_number_of_accepted_invitations(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let match_boy_to_girl = Array::make(m, -1)
  let match_girl_to_boy = Array::make(n, -1)
  let mut result = 0
  fn dfs(
    boy : Int,
    seen : Array[Bool],
    match_boy_to_girl : Array[Int],
    match_girl_to_boy : Array[Int],
    grid : Array[Array[Int]]
  ) -> Bool {
    let n = grid[0].length()
    for girl = 0; girl < n; girl = girl + 1 {
      if grid[boy][girl] == 1 && not(seen[girl]) {
        seen[girl] = true
        if match_girl_to_boy[girl] == -1 ||
          dfs(
            match_girl_to_boy[girl],
            seen,
            match_boy_to_girl,
            match_girl_to_boy,
            grid,
          ) {
          match_boy_to_girl[boy] = girl
          match_girl_to_boy[girl] = boy
          return true
        }
      }
    }
    return false
  }

  for boy = 0; boy < m; boy = boy + 1 {
    let seen = Array::make(n, false)
    if dfs(boy, seen, match_boy_to_girl, match_girl_to_boy, grid) {
      result = result + 1
    }
  }
  return result
}
