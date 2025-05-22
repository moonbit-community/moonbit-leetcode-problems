///|
fn count_good_substrings(s : String) -> Int {
  let mut count = 0
  let n = s.length()
  for i = 0; i < n - 2; i = i + 1 {
    let substring = s.substring(start=i, end=i + 3)
    if is_distinct(substring) {
      count = count + 1
    }
  }
  count
}

///|
fn is_distinct(substring : String) -> Bool {
  let char_set = @hashmap.T::new()
  for i = 0; i < substring.length(); i = i + 1 {
    let char = substring[i]
    if char_set.contains(char) {
      return false
    }
    char_set.set(char, true)
  }
  true
}

// Test cases
