fn count_characters(word : String) -> Array[Int] {
  let counts = Array::make(26, 0)
  for i = 0; i < word.length(); i = i + 1 {
    let index = word[i].to_int() - 'a'.to_int()
    counts[index] = counts[index] + 1
  }
  counts
}

fn close_strings(word1 : String, word2 : String) -> Bool {
  let cnt1 = count_characters(word1)
  let cnt2 = count_characters(word2)
  for i = 0; i < 26; i = i + 1 {
    if cnt1[i] == 0 != (cnt2[i] == 0) {
      return false
    }
  }
  cnt1.sort()
  cnt2.sort()
  cnt1 == cnt2
}
