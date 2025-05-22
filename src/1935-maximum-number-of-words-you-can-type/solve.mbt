///|
fn max_number_of_words_you_can_type(
  text : String,
  broken_letters : String
) -> Int {
  // Split the text into words
  let words = text.split(" ")
  // Convert broken_letters into a set for quick lookup
  let broken_set = @hashmap.new()
  for i = 0; i < broken_letters.length(); i = i + 1 {
    broken_set.set(broken_letters[i], true)
  }

  // Count the number of words that can be fully typed
  let mut count = 0
  for word in words {
    let mut can_type = true
    for j = 0; j < word.length(); j = j + 1 {
      if broken_set.contains(word[j]) {
        can_type = false
        break
      }
    }
    if can_type {
      count = count + 1
    }
  }
  count
}

// Test cases
