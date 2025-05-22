fn longest_beautiful_substring(word : String) -> Int {
  let vowels = ['a', 'e', 'i', 'o', 'u']
  let mut max_length = 0
  let mut current_length = 0
  let mut current_vowel_index = 0
  let mut last_char = ' '
  for i = 0; i < word.length(); i = i + 1 {
    let char = word[i]
    if char == vowels[current_vowel_index] {
      current_length += 1
      last_char = char
    } else if current_vowel_index < 4 && char == vowels[current_vowel_index + 1] {
      current_length += 1
      current_vowel_index += 1
      last_char = char
    } else {
      if last_char == 'u' {
        max_length = @math.maximum(max_length, current_length)
      }
      if char == 'a' {
        current_length = 1
        current_vowel_index = 0
        last_char = char
      } else {
        current_length = 0
        current_vowel_index = 0
        last_char = ' '
      }
    }
  }
  if last_char == 'u' {
    max_length = @math.maximum(max_length, current_length)
  }
  max_length
}
