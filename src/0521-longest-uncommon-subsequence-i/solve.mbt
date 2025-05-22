///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn find_lus_length(a : String, b : String) -> Int {
  if a == b {
    -1
  } else {
    max(a.length(), b.length())
  }
}
