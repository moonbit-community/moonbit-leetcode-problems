///|
fn toCharArray(number : Int) -> Array[Int] {
  let str = number.to_string()
  let result = Array::make(str.length(), 0)
  for i = 0; i < str.length(); i = i + 1 {
    result[i] = str[i].to_int() - '0'.to_int()
  }
  result
}

///|
fn parseInt(chars : Array[Int]) -> Int {
  let mut result = 0
  for i = 0; i < chars.length(); i = i + 1 {
    result = result * 10 + chars[i]
  }
  result
}

///|
fn monotone_increasing_digits(n : Int) -> Int {
  let s = toCharArray(n)
  let mut i = 1
  while i < s.length() && s[i - 1] <= s[i] {
    i = i + 1
  }
  if i < s.length() {
    i = i - 1
    while i > 0 && s[i - 1] > s[i] {
      s[i - 1] = s[i - 1] - 1
      i = i - 1
    }
    i = i + 1
    while i < s.length() {
      s[i] = 9
      i = i + 1
    }
  }
  parseInt(s)
}
