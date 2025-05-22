fn number_of_distinct_substrings(s : String) -> Int {
  let substrings = @hashset.T::new()
  let n = s.length()

  // Generate all substrings
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n + 1; j = j + 1 {
      let substring = s.substring(start=i, end=j)
      substrings.insert(substring)
    }
  }

  // The number of distinct substrings is the size of the set
  substrings.size()
}
