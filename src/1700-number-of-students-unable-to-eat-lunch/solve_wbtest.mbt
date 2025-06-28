///|
test "Example 1" {
  inspect(count_students([1, 1, 0, 0][:], [0, 1, 0, 1][:]), content="0")
}

///|
test "Example 2" {
  inspect(
    count_students([1, 1, 1, 0, 0, 1][:], [1, 0, 0, 0, 1, 1][:]),
    content="3",
  )
}
