///|
test "wordBreak example 1" {
  @json.inspect!(
    word_break("catsanddog", ["cat", "cats", "and", "sand", "dog"])
    |> Set::from_array,
    content=["cat sand dog", "cats and dog"],
  )
  @json.inspect!(
    word_break("pineapplepenapple", [
      "apple", "pen", "applepen", "pine", "pineapple",
    ])
    |> Set::from_array,
    content=[
      "pine apple pen apple", "pine applepen apple", "pineapple pen apple",
    ],
  )
  @json.inspect!(
    word_break("catsandog", ["cat", "cats", "and", "sand", "dog"])
    |> Set::from_array,
    content=[],
  )
}
