///|
test "example 1" {
  let s = "(name)is(age)yearsold"
  let knowledge = [["name", "bob"], ["age", "two"]]
  assert_eq(evaluate_bracket_pairs(s, knowledge), "bobistwoyearsold")
}

///|
test "example 2" {
  let s = "hi(name)"
  let knowledge = [["a", "b"]]
  assert_eq(evaluate_bracket_pairs(s, knowledge), "hi?")
}

///|
test "example 3" {
  let s = "(a)(a)(a)aaa"
  let knowledge = [["a", "yes"]]
  assert_eq(evaluate_bracket_pairs(s, knowledge), "yesyesyesaaa")
}
