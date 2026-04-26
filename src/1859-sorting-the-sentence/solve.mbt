///|
fn split(string : String, delimiter : Char) -> Array[String] {
  let buffer = @buffer.new()
  let array = []
  for i = 0; i < string.length(); i = i + 1 {
    let c = string.code_unit_at(i).unsafe_to_char()
    if c == delimiter {
      buffer.write_char(c)
    } else {
      array.push(buffer.to_string())
      buffer.reset()
    }
  }
  array
}

///|
fn reconstruct_sentence(s : String) -> String {
  // Split the sentence into words
  let words = s |> split(' ')

  // Create an array to hold the sorted words
  let sorted_words = Array::make(words.length(), "")

  // Iterate over each word
  for i = 0; i < words.length(); i = i + 1 {
    let word = words[i]
    // Extract the position number from the word
    let pos = word.code_unit_at(word.length() - 1).to_int() - '0'.to_int()
    // Remove the position number and store the word in the sorted array
    sorted_words[pos] = word.substring(start=0, end=word.length() - 1)
  }

  // Join the sorted words back into a sentence
  sorted_words.join(" ")
}

// Test cases
