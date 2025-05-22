fn can_split_into_descending_consecutive_values(s : String) -> Bool {
  let n = s.length()
  for i = 1; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      let first = @strconv.parse_int?(s.substring(start=0, end=i)).unwrap()
      let second = @strconv.parse_int?(s.substring(start=i, end=j)).unwrap()
      if first == second + 1 {
        if check_descending(s, j, second) {
          return true
        }
      }
    }
  }
  return false
}

fn check_descending(s : String, start : Int, prev_value : Int) -> Bool {
  let mut prev_value = prev_value
  let n = s.length()
  let mut i = start
  while i < n {
    let end = find_next_split(s, i)
    let current_value = @strconv.parse_int?(s.substring(start=i, ~end)).unwrap()
    if current_value != prev_value - 1 {
      return false
    }
    prev_value = current_value
    i = end
  }
  return true
}

fn find_next_split(s : String, start : Int) -> Int {
  let n = s.length()
  for i = start + 1; i <= n; i = i + 1 {
    if i == n || s[i] != '0' {
      return i
    }
  }
  return n
}
