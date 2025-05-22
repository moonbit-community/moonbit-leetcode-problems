test "example 1" {
  assert_eq!(
    truncate_sentence("Hello how are you Contestant", 4),
    "Hello how are you",
  )
}

test "example 2" {
  assert_eq!(
    truncate_sentence("What is the solution to this problem", 4),
    "What is the solution",
  )
}

test "example 3" {
  assert_eq!(
    truncate_sentence("chopper is not a tanuki", 5),
    "chopper is not a tanuki",
  )
}
