test "example 1" {
  assert_eq!(replace_question_mark("?zs"), "azs")
}

test "example 2" {
  assert_eq!(replace_question_mark("ubv?w"), "ubvaw")
}

test "example 3" {
  assert_eq!(replace_question_mark("j?qg??b"), "jaqgacb")
}

test "example 4" {
  assert_eq!(replace_question_mark("??yw?ipkj?"), "abywaipkja")
}
