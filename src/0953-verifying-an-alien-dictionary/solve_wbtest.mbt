///|
test "example 1" {
  let words : Array[String] = ["hello", "leetcode"]
  let order = "hlabcdefgijkmnopqrstuvwxyz"
  assert_eq!(is_alien_sorted(words, order), true)
}

///|
test "example 2" {
  let words : Array[String] = ["word", "world", "row"]
  let order = "worldabcefghijkmnpqstuvxyz"
  assert_eq!(is_alien_sorted(words, order), false)
}

///|
test "example 3" {
  let words : Array[String] = ["apple", "app"]
  let order = "abcdefghijklmnopqrstuvwxyz"
  assert_eq!(is_alien_sorted(words, order), false)
}
