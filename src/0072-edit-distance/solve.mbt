fn edit_distance(a : String, b : String) -> Int {
  let m = a.length()
  let n = b.length()
  let s = [[], []]
  // create Array of length n+1 with elements initialized to 0
  s[0] = Array::make(n + 1, 0)
  s[1] = Array::make(n + 1, 0)
  let mut j = 1
  while j <= n {
    s[0][j] = j
    j = j + 1
  }
  let mut i = 1
  while i <= m {
    s[i.land(1)][0] = i
    let mut j = 1
    while j <= n {
      s[i.land(1)][j] = if a[i - 1] == b[j - 1] {
        s[(i - 1).land(1)][j - 1]
      } else {
        1 + @math.minimum(
          @math.minimum(s[(i - 1).land(1)][j - 1], s[(i - 1).land(1)][j]),
          s[i.land(1)][j - 1],
        )
      }
      j = j + 1
    }
    i = i + 1
  }
  s[m.land(1)][n]
}
