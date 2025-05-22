///|
test "example 1" {
  let features = ["cooler", "lock", "touch"]
  let responses = [
    "i like cooler cooler", "lock touch cool", "locker like touch",
  ]
  assert_eq!(sort_features_by_popularity(features, responses), [
    "touch", "cooler", "lock",
  ])
}

///|
test "example 2" {
  let features = ["a", "aa", "b", "c"]
  let responses = ["a", "a aa", "a a a a a", "b a"]
  assert_eq!(sort_features_by_popularity(features, responses), [
    "a", "aa", "b", "c",
  ])
}
