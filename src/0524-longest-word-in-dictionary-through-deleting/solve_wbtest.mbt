///|
test "example 1" {
  let s = "abpcplea"
  let dictionary : @immut/list.T[String] = Cons(
    "ale",
    Cons("apple", Cons("monkey", Cons("plea", Nil))),
  )
  let expected = "apple"
  assert_eq!(find_longest_word(s, dictionary), expected)
}

///|
test "example 2" {
  let s = "abpcplea"
  let dictionary : @immut/list.T[String] = Cons("a", Cons("b", Cons("c", Nil)))
  let expected = "a"
  assert_eq!(find_longest_word(s, dictionary), expected)
}

///|
test "example 3" {
  let s = "bab"
  let dictionary : @immut/list.T[String] = Cons(
    "ba",
    Cons("ab", Cons("a", Cons("b", Nil))),
  )
  let expected = "ab"
  assert_eq!(find_longest_word(s, dictionary), expected)
}
