test "example 1" {
  assert_eq!(
    camel_match(
      ["FooBar", "FooBarTest", "FootBall", "FrameBuffer", "ForceFeedBack"],
      "FB",
    ),
    [true, false, true, true, false],
  )
}

test "example 2" {
  assert_eq!(
    camel_match(
      ["FooBar", "FooBarTest", "FootBall", "FrameBuffer", "ForceFeedBack"],
      "FoBa",
    ),
    [true, false, true, false, false],
  )
}

test "example 3" {
  assert_eq!(
    camel_match(
      ["FooBar", "FooBarTest", "FootBall", "FrameBuffer", "ForceFeedBack"],
      "FoBaT",
    ),
    [false, true, false, false, false],
  )
}
