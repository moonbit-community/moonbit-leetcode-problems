test "example 1" {
  let s : Array[Char] = [
    't', 'h', 'e', ' ', 's', 'k', 'y', ' ', 'i', 's', ' ', 'b', 'l', 'u', 'e',
  ]
  let expected : Array[Char] = [
    'b', 'l', 'u', 'e', ' ', 'i', 's', ' ', 's', 'k', 'y', ' ', 't', 'h', 'e',
  ]
  assert_eq!(reverse_words(s), expected)
}

test "example 2" {
  let s : Array[Char] = ['h', 'e', 'l', 'l', 'o']
  let expected : Array[Char] = ['h', 'e', 'l', 'l', 'o']
  assert_eq!(reverse_words(s), expected)
}

test "example 3" {
  let s : Array[Char] = ['a', ' ', 'b', ' ', 'c']
  let expected : Array[Char] = ['c', ' ', 'b', ' ', 'a']
  assert_eq!(reverse_words(s), expected)
}
