test "find anagrams example 1" {
  assert_eq!(
    find_anagrams("cbaebabacd", "abc"),
    @immut/list.T::Cons(6, @immut/list.T::Cons(0, @immut/list.T::Nil)),
  )
}

test "find anagrams example 2" {
  assert_eq!(
    find_anagrams("abab", "ab"),
    @immut/list.T::Cons(
      2,
      @immut/list.T::Cons(1, @immut/list.T::Cons(0, @immut/list.T::Nil)),
    ),
  )
}
