///|
fn is_vowel(c : Char) -> Bool {
  match c {
    'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' => true
    _ => false
  }
}

///|
fn count_vowels(s : String) -> Int {
  let mut count = 0
  for i = 0; i < s.length(); i = i + 1 {
    let c = s[i]
    if is_vowel(c) {
      count = count + 1
    }
  }
  count
}

///|
fn halves_are_alike(s : String) -> Bool {
  let len = s.length()
  let mid = len / 2
  let a = s.substring(start=0, end=mid)
  let b = s.substring(start=mid, end=len)
  count_vowels(a) == count_vowels(b)
}
