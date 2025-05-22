test "reverse string test1" {
  let s : Array[Char] = ['h', 'e', 'l', 'l', 'o']
  reverse_string(s)
  assert_eq!(s, ['o', 'l', 'l', 'e', 'h'])
}

test "reverse string test2" {
  let s : Array[Char] = ['M', 'o', 'o', 'n', 'B', 'i', 't']
  reverse_string(s)
  assert_eq!(s, ['t', 'i', 'B', 'n', 'o', 'o', 'M'])
}
