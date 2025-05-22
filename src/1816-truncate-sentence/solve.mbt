///|
fn split(string : String, delimiter : Char) -> Array[String] {
  let buffer = @buffer.new()
  let array = []
  for i = 0; i < string.length(); i = i + 1 {
    if string[i] == delimiter {
      buffer.write_char(string[i])
    } else {
      array.push(buffer.to_string())
      buffer.reset()
    }
  }
  array
}

///|
fn join(strings : Array[String], delimiter : String) -> String {
  let buffer = @buffer.new()
  for i = 0; i < strings.length(); i = i + 1 {
    buffer.write_string(strings[i])
    if i != strings.length() - 1 {
      buffer.write_string(delimiter)
    }
  }
  buffer.to_string()
}

///|
fn truncate_sentence(s : String, k : Int) -> String {
  // Split the sentence into words
  let words = s |> split(' ')

  // Create a new array to hold the first k words
  let result_words = Array::make(k, "")

  // Copy the first k words into the result array
  for i = 0; i < k; i = i + 1 {
    result_words[i] = words[i]
  }

  // Join the words back into a sentence
  result_words |> join(" ")
}

// Test cases
