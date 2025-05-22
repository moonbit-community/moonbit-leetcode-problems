///|
fn longest_word_with_all_prefixes(words : Array[String]) -> String {
  // Sort words by length in ascending order
  words.sort_by(fn(a, b) { a.length() - b.length() })
  let word_set : @hashmap.T[String, Unit] = @hashmap.new()
  let mut longest_word = ""
  for i = 0; i < words.length(); i = i + 1 {
    let word = words[i]
    let mut valid = true

    // Check if all prefixes of the word are in the set
    for j = 1; j <= word.length(); j = j + 1 {
      let prefix = word.substring(start=0, end=j)
      if not(word_set.contains(prefix)) {
        valid = false
        break
      }
    }

    // If the word is valid, add it to the set and update the longest word
    if valid {
      word_set.set(word, ())
      if word.length() > longest_word.length() ||
        (word.length() == longest_word.length() && word < longest_word) {
        longest_word = word
      }
    }
  }
  longest_word
}

// Test cases
