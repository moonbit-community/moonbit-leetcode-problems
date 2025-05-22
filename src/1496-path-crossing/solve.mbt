enum Direction {
  N
  S
  E
  W
}

fn char_to_direction(c : Char) -> Direction? {
  match c {
    'N' => Some(Direction::N)
    'S' => Some(Direction::S)
    'E' => Some(Direction::E)
    'W' => Some(Direction::W)
    _ => None
  }
}

fn is_path_crossing(path : String) -> Bool {
  let mut i = 0
  let mut j = 0
  let vis : @hashset.T[Int] = @hashset.T::of([])
  vis.insert(0)
  for idx = 0; idx < path.length(); idx = idx + 1 {
    let c = path[idx]
    let dir = char_to_direction(c)
    match dir {
      Some(Direction::N) => i = i - 1
      Some(Direction::S) => i = i + 1
      Some(Direction::E) => j = j + 1
      Some(Direction::W) => j = j - 1
      _ => ()
    }
    let t = i * 20000 + j
    if vis.contains(t) {
      return true
    }
    vis.insert(t)
  }
  return false
}
