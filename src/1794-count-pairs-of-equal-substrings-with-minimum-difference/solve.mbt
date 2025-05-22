fn count_pairs_of_equal_substrings_with_minimum_difference(
  first_string : String,
  second_string : String
) -> Int {
  let n = first_string.length()
  let m = second_string.length()
  let mut min_diff = n + m
  let mut count = 0
  for i = 0; i < n; i = i + 1 {
    for j = i; j < n; j = j + 1 {
      let sub_first = first_string.substring(start=i, end=j + 1)
      for a = 0; a < m; a = a + 1 {
        for b = a; b < m; b = b + 1 {
          let sub_second = second_string.substring(start=a, end=b + 1)
          if sub_first == sub_second {
            let diff = j - a
            if diff < min_diff {
              min_diff = diff
              count = 1
            } else if diff == min_diff {
              count = count + 1
            }
          }
        }
      }
    }
  }
  count
}
