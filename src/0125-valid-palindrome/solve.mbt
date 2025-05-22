///|
fn is_letter_or_digit(c : Char) -> Bool {
  match c {
    'a' => true
    'b' => true
    'c' => true
    'd' => true
    'e' => true
    'f' => true
    'g' => true
    'h' => true
    'i' => true
    'j' => true
    'k' => true
    'l' => true
    'm' => true
    'n' => true
    'o' => true
    'p' => true
    'q' => true
    'r' => true
    's' => true
    't' => true
    'u' => true
    'v' => true
    'w' => true
    'x' => true
    'y' => true
    'z' => true
    'A' => true
    'B' => true
    'C' => true
    'D' => true
    'E' => true
    'F' => true
    'G' => true
    'H' => true
    'I' => true
    'J' => true
    'K' => true
    'L' => true
    'M' => true
    'N' => true
    'O' => true
    'P' => true
    'Q' => true
    'R' => true
    'S' => true
    'T' => true
    'U' => true
    'V' => true
    'W' => true
    'X' => true
    'Y' => true
    'Z' => true
    '0' => true
    '1' => true
    '2' => true
    '3' => true
    '4' => true
    '5' => true
    '6' => true
    '7' => true
    '8' => true
    '9' => true
    _ => false
  }
}

///|
fn to_lower_case(c : Char) -> Char {
  match c {
    'A' => 'a'
    'B' => 'b'
    'C' => 'c'
    'D' => 'd'
    'E' => 'e'
    'F' => 'f'
    'G' => 'g'
    'H' => 'h'
    'I' => 'i'
    'J' => 'j'
    'K' => 'k'
    'L' => 'l'
    'M' => 'm'
    'N' => 'n'
    'O' => 'o'
    'P' => 'p'
    'Q' => 'q'
    'R' => 'r'
    'S' => 's'
    'T' => 't'
    'U' => 'u'
    'V' => 'v'
    'W' => 'w'
    'X' => 'x'
    'Y' => 'y'
    'Z' => 'z'
    _ => c
  }
}

///|
fn is_palindrome(s : String) -> Bool {
  let mut i = 0
  let length = s.length()
  let mut j = length - 1
  while i < j {
    let ci = s[i]
    let cj = s[j]
    if not(is_letter_or_digit(ci)) {
      i = i + 1
      continue
    }
    if not(is_letter_or_digit(cj)) {
      j = j - 1
      continue
    }
    if to_lower_case(ci) != to_lower_case(cj) {
      return false
    }
    i = i + 1
    j = j - 1
  }
  true
}
