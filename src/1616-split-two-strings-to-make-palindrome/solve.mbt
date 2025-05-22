///|
fn check_palindrome_formation(a : String, b : String) -> Bool {
  fn check1(a : String, b : String) -> Bool {
    let mut i = 0
    let mut j = b.length() - 1
    while i < j && a[i] == b[j] {
      i = i + 1
      j = j - 1
    }
    i >= j || check2(a, i, j) || check2(b, i, j)
  }

  fn check2(a : String, i : Int, j : Int) -> Bool {
    let mut i = i
    let mut j = j
    while i < j && a[i] == a[j] {
      i = i + 1
      j = j - 1
    }
    i >= j
  }

  check1(a, b) || check1(b, a)
}
