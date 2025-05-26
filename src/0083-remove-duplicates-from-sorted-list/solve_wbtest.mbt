///|
test "example 1" {
  inspect!(
    delete_duplicates(@immut/list.of([1, 1, 2])),
    content="@list.of([1, 2])",
  )
}

///|
test "example 2" {
  inspect!(
    delete_duplicates(@immut/list.of([1, 1, 2, 3, 3])),
    content="@list.of([1, 2, 3])",
  )
}
