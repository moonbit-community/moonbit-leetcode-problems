///|
fn str_without_3a3b(a : Int, b : Int) -> String {
  let mut ans = ""
  let mut a = a
  let mut b = b
  while a > 0 && b > 0 {
    if a > b {
      ans = ans + "aab"
      a = a - 2
      b = b - 1
    } else if a < b {
      ans = ans + "bba"
      a = a - 1
      b = b - 2
    } else {
      ans = ans + "ab"
      a = a - 1
      b = b - 1
    }
  }

  // Since MoonBit does not have a "repeat" method, we implement a version ourselves
  ans = ans + repeat_string("a", a) + repeat_string("b", b)
  ans
}

// Helper function to simulate Java's repeat function

///|
fn repeat_string(s : String, n : Int) -> String {
  let mut result = ""
  let mut i = 0
  while i < n {
    result = result + s
    i = i + 1
  }
  result
}
