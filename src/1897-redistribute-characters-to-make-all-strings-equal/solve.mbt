///|
fn can_make_equal(words : Array[String]) -> Bool {
  let char_count : @hashmap.T[Char, Int] = @hashmap.new()
  let num_words = words.length()

  // Count the frequency of each character in all strings
  for i = 0; i < num_words; i = i + 1 {
    let word = words[i]
    for j = 0; j < word.length(); j = j + 1 {
      let char = word[j]
      let count = char_count.get_or_default(char, 0)
      char_count.set(char, count + 1)
    }
  }
  let mut result = true

  // Check if the frequency of each character is divisible by the number of strings
  char_count.each(fn(__, count) { if count % num_words != 0 { result = false } })
  return result
}

// Test cases
