///|
fn largest_merge(word1 : String, word2 : String) -> String {
  let mut merge = ""
  let mut i = 0
  let mut j = 0
  let word1_len = word1.length()
  let word2_len = word2.length()
  while i < word1_len && j < word2_len {
    if word1[i] > word2[j] {
      merge = merge + word1[i].to_string()
      i = i + 1
    } else if word1[i] < word2[j] {
      merge = merge + word2[j].to_string()
      j = j + 1
    } else {
      let mut k = 1
      while i + k < word1_len &&
            j + k < word2_len &&
            word1[i + k] == word2[j + k] {
        k = k + 1
      }
      if i + k < word1_len &&
        (j + k == word2_len || word1[i + k] > word2[j + k]) {
        merge = merge + word1[i].to_string()
        i = i + 1
      } else {
        merge = merge + word2[j].to_string()
        j = j + 1
      }
    }
  }
  while i < word1_len {
    merge = merge + word1[i].to_string()
    i = i + 1
  }
  while j < word2_len {
    merge = merge + word2[j].to_string()
    j = j + 1
  }
  merge
}
