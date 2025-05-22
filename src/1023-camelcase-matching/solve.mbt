fn camel_match(queries : Array[String], pattern : String) -> Array[Bool] {
  fn check(s : String, t : String) -> Bool {
    let m = s.length()
    let n = t.length()
    let mut i = 0
    let mut j = 0
    while j < n {
      while i < m && s[i] != t[j] && s[i].to_int() >= 97 {
        i = i + 1
      }
      if i == m || s[i] != t[j] {
        return false
      }
      i = i + 1
      j = j + 1
    }
    while i < m && s[i].to_int() >= 97 {
      i = i + 1
    }
    i == m
  }

  let ans : Array[Bool] = Array::new()
  let queries_list = @immut/list.T::from_array(queries)
  for i = 0; i < queries_list.length(); i = i + 1 {
    let q = queries_list.nth_exn(i)
    ans.push(check(q, pattern))
  }
  ans
}
