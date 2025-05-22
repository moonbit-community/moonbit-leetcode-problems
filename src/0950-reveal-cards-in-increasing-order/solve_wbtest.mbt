test "deck_revealed_increasing" {
  let deck = [17, 13, 11, 2, 3, 5, 7]
  let expected = [2, 13, 3, 11, 5, 17, 7]
  assert_eq!(deck_revealed_increasing(deck), expected)
}
