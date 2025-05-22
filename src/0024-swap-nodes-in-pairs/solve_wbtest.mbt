///|
test "example 1" {
  let list = @immut/list.T::of([1, 2, 3, 4])
  let expected = @immut/list.T::of([2, 1, 4, 3])
  assert_eq!(swap_pairs(list), expected)
}

///|
test "example 2" {
  assert_eq!(
    swap_pairs((@immut/list.T::Nil : @immut/list.T[Int])),
    @immut/list.T::of([]),
  )
}

///|
test "example 3" {
  assert_eq!(swap_pairs(@immut/list.T::of([1])), @immut/list.T::of([1]))
}

// Additional test cases

///|
test "even number of nodes" {
  let list = @immut/list.T::of([1, 2, 3, 4, 5, 6])
  let expected = @immut/list.T::of([2, 1, 4, 3, 6, 5])
  assert_eq!(swap_pairs(list), expected)
}

///|
test "odd number of nodes" {
  let list = @immut/list.T::of([1, 2, 3, 4, 5])
  let expected = @immut/list.T::of([2, 1, 4, 3, 5])
  assert_eq!(swap_pairs(list), expected)
}
