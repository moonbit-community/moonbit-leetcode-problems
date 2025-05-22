///|
fn number_of_different_integers(word : String) -> Int {
  let mut modified_word = ""
  for i = 0; i < word.length(); i = i + 1 {
    if word[i] >= '0' && word[i] <= '9' {
      modified_word = modified_word + word[i].to_string()
    } else {
      modified_word = modified_word + " "
    }
  }
  let integers = split_by_space(modified_word)
  let unique_integers : @hashmap.T[String, Bool] = @hashmap.new()
  for i = 0; i < integers.length(); i = i + 1 {
    let integer = integers[i]
    if integer != "" {
      let trimmed_integer = trim_leading_zeros(integer)
      unique_integers.set(trimmed_integer, true)
    }
  }
  unique_integers.size()
}

///|
fn split_by_space(s : String) -> Array[String] {
  let result : Array[String] = []
  let mut current = ""
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == ' ' {
      if current != "" {
        result.push(current)
        current = ""
      }
    } else {
      current = current + s[i].to_string()
    }
  }
  if current != "" {
    result.push(current)
  }
  result
}

///|
fn trim_leading_zeros(s : String) -> String {
  let mut start = 0
  while start < s.length() && s[start] == '0' {
    start = start + 1
  }
  if start == s.length() {
    "0"
  } else {
    substring(s, start, s.length())
  }
}

///|
fn substring(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  for i = start; i < end; i = i + 1 {
    result = result + s[i].to_string()
  }
  result
}
