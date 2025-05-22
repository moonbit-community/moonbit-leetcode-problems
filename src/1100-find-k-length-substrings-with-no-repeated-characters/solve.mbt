fn count_unique_characters(substr : String) -> Int {
  let char_counts : Array[Int] = Array::make(26, 0) // Assume lowercase ascii
  for i = 0; i < substr.length(); i = i + 1 {
    let index = substr[i].to_int() - 'a'.to_int()
    char_counts[index] = char_counts[index] + 1
  }
  let mut unique_count = 0
  for i = 0; i < 26; i = i + 1 {
    let count = char_counts[i]
    if count == 1 {
      unique_count = unique_count + 1
    }
  }
  unique_count
}

fn num_k_len_substr_no_repeats(s : String, k : Int) -> Int {
  let n = s.length()
  if k > n {
    return 0
  }
  let mut ans = 0
  for i = 0; i <= n - k; i = i + 1 {
    let substr = slice(s, i, i + k)
    if count_unique_characters(substr) == k {
      ans = ans + 1
    }
  }
  ans
}

// Helper function to slice a String since Moonbit standard library doesn't include it
fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}
