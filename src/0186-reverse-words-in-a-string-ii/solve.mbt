///|
fn reverse(s : Array[Char], i : Int, j : Int) -> Unit {
  let mut i = i
  let mut j = j
  while i < j {
    let t = s[i]
    s[i] = s[j]
    s[j] = t
    i = i + 1
    j = j - 1
  }
}

///|
fn reverse_words(s : Array[Char]) -> Array[Char] {
  let n = s.length()
  let mut i = 0
  let mut j = 0
  while j < n {
    if s[j] == ' ' {
      reverse(s, i, j - 1)
      i = j + 1
    } else if j == n - 1 {
      reverse(s, i, j)
    }
    j = j + 1
  }
  reverse(s, 0, n - 1)
  s
}
