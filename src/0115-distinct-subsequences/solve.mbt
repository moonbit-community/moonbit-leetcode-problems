///|
fn num_distinct(s : String, t : String) -> Int {
  let n : Int = t.length()
  let f : Array[Int] = Array::make(n + 1, 0)
  f[0] = 1
  let mut i : Int = 0
  while i < s.length() {
    let a : Char = s[i]
    let mut j : Int = n
    while j > 0 {
      let b : Char = t[j - 1]
      if a == b {
        f[j] = f[j] + f[j - 1]
      }
      j = j - 1
    }
    i = i + 1
  }
  f[n]
}
