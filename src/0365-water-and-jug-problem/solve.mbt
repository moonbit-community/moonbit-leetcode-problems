///|
struct State {
  i : Int
  j : Int
} derive(Eq)

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn f(i : Int, j : Int) -> State {
  State::{ i, j }
}

///|
fn dfs(
  set : @immut/list.T[State],
  x : Int,
  y : Int,
  z : Int,
  i : Int,
  j : Int
) -> Bool {
  let st = f(i, j)
  let vis = set.concat(@immut/list.T::of([st]))
  if set.contains(st) {
    false
  } else if i == z || j == z || i + j == z {
    true
  } else {
    dfs(vis, x, y, z, x, j) ||
    dfs(vis, x, y, z, i, y) ||
    dfs(vis, x, y, z, 0, j) ||
    dfs(vis, x, y, z, i, 0) ||
    dfs(vis, x, y, z, i - min(i, y - j), j + min(i, y - j)) ||
    dfs(vis, x, y, z, i + min(j, x - i), j - min(j, x - i))
  }
}

///|
fn con_measure_water(x : Int, y : Int, z : Int) -> Bool {
  let vis : @immut/list.T[State] = Nil
  dfs(vis, x, y, z, 0, 0)
}
