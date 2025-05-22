fn min_operations(logs : Array[String]) -> Int {
  let mut depth = 0
  for i = 0; i < logs.length(); i = i + 1 {
    let log = logs[i]
    if log == "../" {
      depth = max(0, depth - 1)
    } else if log != "./" {
      depth = depth + 1
    }
  }
  depth
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
