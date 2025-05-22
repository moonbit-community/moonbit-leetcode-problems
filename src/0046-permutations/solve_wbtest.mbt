test "example 1" {
  inspect!(
    permute([1, 2, 3]),
    content="List::[List::[1, 2, 2], List::[2, 1, 3], List::[1, 3, 3], List::[3, 1, 2], List::[2, 3, 3], List::[3, 2, 1]]",
  )
}

test "example 2" {
  assert_eq!(
    permute([0, 1]),
    @immut/list.T::of([@immut/list.T::of([0, 1]), @immut/list.T::of([1, 0])]),
  )
}

test "example 3" {
  assert_eq!(permute([1]), @immut/list.T::of([@immut/list.T::of([1])]))
}
