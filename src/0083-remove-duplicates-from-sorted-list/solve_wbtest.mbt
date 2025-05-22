///|
test "example 1" {
  inspect!(
    remove_duplicates(@immut/list.T::of([1, 1, 2])),
    content="List::[1, 2]",
  )
}

///|
test "example 2" {
  inspect!(
    remove_duplicates(@immut/list.T::of([1, 1, 2, 3, 3])),
    content="List::[1, 2, 3]",
  )
}
