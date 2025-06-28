///|
test "example_1" {
  let s = "is2 sentence4 This1 a3 "
  assert_eq(reconstruct_sentence(s), "This is a sentence")
}

///|
test "example_2" {
  let s = "Myself2 Me1 I4 and3 "
  assert_eq(reconstruct_sentence(s), "Me Myself and I")
}
