test "example 1" {
  let result = read_binary_watch(1)
  let expectedResult = @immut/list.T::Cons(
    "0:01",
    @immut/list.T::Cons("0:02", @immut/list.T::Cons("0:04", @immut/list.T::Nil)),
  ) // Simpified for brevity
  assert_eq!(result, expectedResult)
}

test "example 2" {
  let result = read_binary_watch(2)
  let expectedResult = @immut/list.T::Cons(
    "0:03",
    @immut/list.T::Cons("0:05", @immut/list.T::Nil),
  ) // Simpified for brevity
  assert_eq!(concat(result, ", "), concat(expectedResult, ", "))
}
