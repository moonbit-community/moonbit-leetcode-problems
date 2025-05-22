///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

///|
fn num_moves_stones(a : Int, b : Int, c : Int) -> (Int, Int) {
  let x = min(a, min(b, c))
  let z = max(a, max(b, c))
  let y = a + b + c - x - z
  let mut mi : Int = 0
  let mut mx : Int = 0
  if z - x > 2 {
    if y - x < 3 || z - y < 3 {
      mi = 1
    } else {
      mi = 2
    }
    mx = z - x - 2
  } else {
    mi = 0
    mx = 0
  }
  (mi, mx)
}
