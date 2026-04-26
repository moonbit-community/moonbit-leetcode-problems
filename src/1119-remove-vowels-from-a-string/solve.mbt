///|
fn remove_vowels(s : String) -> String {
  let vowels_list = @immut/list.of([
    'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U',
  ])
  let mut result : String = ""

  // Loop through each character in the input string
  for i = 0; i < s.length(); i = i + 1 {
    let char = s.code_unit_at(i).unsafe_to_char()
    if not(vowels_list.contains(char)) {
      result = result + char.to_string()
    }
  }
  result
}
