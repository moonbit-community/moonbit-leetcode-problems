///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn max_count(m : Int, n : Int, ops : Array[Array[Int]]) -> Int {
  let mut m = m
  let mut n = n
  let mut i = 0
  while i < ops.length() {
    m = min(m, ops[i][0])
    n = min(n, ops[i][1])
    i = i + 1
  }
  m * n
}
