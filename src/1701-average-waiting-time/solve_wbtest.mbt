test "Example 1" {
  inspect!(average_waiting_time([(1, 2), (2, 5), (4, 3)]), content="5.00000")
}

test "Example 2" {
  inspect!(
    average_waiting_time([(5, 2), (5, 4), (10, 3), (20, 1)]),
    content="3.25000",
  )
}
