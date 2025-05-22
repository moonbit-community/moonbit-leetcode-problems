test "example 1" {
  let n = 2
  let languages = [[1], [2], [1, 2]]
  let friendships = [[1, 2], [1, 3], [2, 3]]
  assert_eq!(min_number_of_people_to_teach(n, languages, friendships), 1)
}

test "example 2" {
  let n = 3
  let languages = [[2], [1, 3], [1, 2], [3]]
  let friendships = [[1, 4], [1, 2], [3, 4], [2, 3]]
  assert_eq!(min_number_of_people_to_teach(n, languages, friendships), 2)
}
