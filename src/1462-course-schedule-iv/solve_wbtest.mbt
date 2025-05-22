///|
test "example 1" {
  let n = 2
  let prerequisites = [(0, 1)]
  let queries = [(0, 1), (1, 0)]
  assert_eq!(check_if_prerequisite(n, prerequisites, queries), [true, false])
}

///|
test "example 2" {
  let n = 2
  let prerequisites = []
  let queries = [(1, 0), (0, 1)]
  assert_eq!(check_if_prerequisite(n, prerequisites, queries), [false, false])
}
