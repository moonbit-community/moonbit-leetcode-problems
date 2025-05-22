fn split(string : String, delimiter : Char) -> Array[String] {
  let mut buffer = Buffer::new()
  let array = []
  for i = 0; i < string.length(); i = i + 1 {
    if string[i] == delimiter {
      buffer.write_char(string[i])
    } else {
      array.push(buffer.to_string())
      buffer = Buffer::new()
    }
  }
  array
}

fn sentence_similarity(sentence1 : String, sentence2 : String) -> Bool {
  let words1 = split(sentence1, ' ')
  let words2 = split(sentence2, ' ')
  if words1.length() == words2.length() {
    return words1 == words2
  }
  let (longer, shorter) = if words1.length() > words2.length() {
    (words1, words2)
  } else {
    (words2, words1)
  }
  let mut i = 0
  let mut j = 0
  let mut mismatch_count = 0
  while i < longer.length() && j < shorter.length() {
    if longer[i] == shorter[j] {
      i = i + 1
      j = j + 1
    } else {
      mismatch_count = mismatch_count + 1
      i = i + 1
    }
  }
  if j == shorter.length() {
    return true
  }
  if mismatch_count == 0 && i == longer.length() - 1 {
    return true
  }
  false
}
