fn can_make_pali_queries(
  s : String,
  queries : @immut/list.T[(Int, Int, Int)]
) -> @immut/list.T[Bool] {
  let n = s.length()
  let ss = Array::make(n + 1, Array::make(26, 0))

  // Populate `ss` with character counts
  for i = 1; i <= n; i = i + 1 {
    ss[i] = Array::copy(ss[i - 1])
    let c = s[i - 1].to_int() - 'a'.to_int()
    ss[i][c] = ss[i][c] + 1
  }
  queries.map(
    fn(query) -> Bool {
      let (l, r, k) = query
      let mut x = 0
      for j = 0; j < 26; j = j + 1 {
        x = x + (ss[r + 1][j] - ss[l][j]) % 2
      }
      x / 2 <= k
    },
  )
}
