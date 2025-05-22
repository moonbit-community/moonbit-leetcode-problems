///|
fn merge_strings_alternately(word1 : String, word2 : String) -> String {
  let mut merged_string = ""
  let len1 = word1.length()
  let len2 = word2.length()
  let min_len = @math.minimum(len1, len2)
  for i = 0; i < min_len; i = i + 1 {
    merged_string = merged_string + word1[i].to_string() + word2[i].to_string()
  }
  if len1 > len2 {
    for i = min_len; i < len1; i = i + 1 {
      merged_string = merged_string + word1[i].to_string()
    }
  } else {
    for i = min_len; i < len2; i = i + 1 {
      merged_string = merged_string + word2[i].to_string()
    }
  }
  merged_string
}
