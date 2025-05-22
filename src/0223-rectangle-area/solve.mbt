fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn compute_area(
  ax1 : Int,
  ay1 : Int,
  ax2 : Int,
  ay2 : Int,
  bx1 : Int,
  by1 : Int,
  bx2 : Int,
  by2 : Int
) -> Int {
  let a = (ax2 - ax1) * (ay2 - ay1)
  let b = (bx2 - bx1) * (by2 - by1)
  let width = min(ax2, bx2) - max(ax1, bx1)
  let height = min(ay2, by2) - max(ay1, by1)
  a + b - max(width, 0) * max(height, 0)
}
