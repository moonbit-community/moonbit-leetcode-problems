fn min_changes_to_make_alternating(s : String) -> Int {
  let n = s.length()
  let mut count_0_start = 0
  let mut count_1_start = 0
  for i = 0; i < n; i = i + 1 {
    if i % 2 == 0 {
      if s[i] == '1' {
        count_0_start = count_0_start + 1
      } else {
        count_1_start = count_1_start + 1
      }
    } else if s[i] == '0' {
      count_0_start = count_0_start + 1
    } else {
      count_1_start = count_1_start + 1
    }
  }
  @math.minimum(count_0_start, count_1_start)
}
