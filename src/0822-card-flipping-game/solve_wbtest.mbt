test "example 1" {
  let fronts = [1, 2, 4, 4, 7]
  let backs = [1, 3, 4, 1, 3]
  assert_eq!(flipgame(fronts, backs), 2)
}

test "example 2" {
  let fronts = [1]
  let backs = [2]
  assert_eq!(flipgame(fronts, backs), 1)
}

test "example 3" {
  let fronts = [1, 2]
  let backs = [2, 1]
  assert_eq!(flipgame(fronts, backs), 0)
}
