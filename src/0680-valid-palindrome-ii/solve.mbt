///|
fn slice(s : String, start : Int, len : Int) -> String {
  let mut result = ""
  let n = s.length()
  let mut i = start
  while i < n && i - start < len {
    result = result + s[i].to_string()
    i = i + 1
  }
  result
}

///|
fn check(s : String, i : Int, j : Int) -> Bool {
  let mut i = i
  let mut j = j
  while i < j {
    if s[i] != s[j] {
      return false
    }
    i = i + 1
    j = j - 1
  }
  true
}

///|
fn valid_palindrome(s : String) -> Bool {
  let mut i = 0
  let mut j = s.length() - 1
  while i < j {
    if s[i] != s[j] {
      return check(slice(s, 0, s.length()), i + 1, j) ||
        check(slice(s, 0, s.length()), i, j - 1)
    }
    i = i + 1
    j = j - 1
  }
  true
}
