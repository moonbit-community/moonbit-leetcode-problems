test "example 1" {
  assert_eq!(interpret("G()(al)"), "Goal")
}

test "example 2" {
  assert_eq!(interpret("G()()()()(al)"), "Goooal")
}

test "example 3" {
  assert_eq!(interpret("(al)G(al)()()G"), "alGalooG")
}
