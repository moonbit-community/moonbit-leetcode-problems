///|
fn letter_combinations(digits : String) -> Array[String] {
  if digits.length() == 0 {
    return Array::new()
  }
  let digit_to_letters : Map[Char, Array[Char]] = {
    '2': ['a', 'b', 'c'],
    '3': ['d', 'e', 'f'],
    '4': ['g', 'h', 'i'],
    '5': ['j', 'k', 'l'],
    '6': ['m', 'n', 'o'],
    '7': ['p', 'q', 'r', 's'],
    '8': ['t', 'u', 'v'],
    '9': ['w', 'x', 'y', 'z'],
  }
  let result : Array[String] = Array::new()
  backtrack("", digits, 0, digit_to_letters, result)
  result
}

///|
fn backtrack(
  current : String,
  digits : String,
  index : Int,
  digit_to_letters : Map[Char, Array[Char]],
  result : Array[String]
) -> Unit {
  if index == digits.length() {
    result.push(current)
    return
  }
  let current_digit = digits[index]
  let letters = digit_to_letters.get(current_digit).or(Array::new())
  for i = 0; i < letters.length(); i = i + 1 {
    let letter = letters[i]
    backtrack(
      current + letter.to_string(),
      digits,
      index + 1,
      digit_to_letters,
      result,
    )
  }
}
