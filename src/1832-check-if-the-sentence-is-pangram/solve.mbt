///|
fn is_pangram(sentence : String) -> Bool {
  let letter_count : @hashmap.T[Char, Int] = @hashmap.new()
  let alphabet_size = 26
  for i = 0; i < sentence.length(); i = i + 1 {
    let char = sentence.code_unit_at(i).unsafe_to_char()
    if char >= 'a' && char <= 'z' {
      letter_count.set(char, 1)
    }
  }
  letter_count.size() == alphabet_size
}
