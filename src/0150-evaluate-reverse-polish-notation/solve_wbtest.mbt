///|
test "example 1" {
  let tokens = @immut/list.T::of(["2", "1", "+", "3", "*"])
  assert_eq!(eval_rpn(tokens), 9)
}

///|
test "example 2" {
  let tokens = @immut/list.T::of(["4", "13", "5", "/", "+"])
  assert_eq!(eval_rpn(tokens), 6)
}

///|
test "example 3" {
  let tokens = @immut/list.T::of([
    "10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+",
  ])
  assert_eq!(eval_rpn(tokens), 22)
}
