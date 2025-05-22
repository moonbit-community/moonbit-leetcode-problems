///|
test "example 1" {
  let persons = [0, 1, 1, 0, 0, 1, 0]
  let times = [0, 5, 10, 15, 20, 25, 30]
  let tvc = TopVotedCandidate::new(persons, times)
  assert_eq!(tvc.q(3), 0)
  assert_eq!(tvc.q(12), 1)
  assert_eq!(tvc.q(25), 1)
  assert_eq!(tvc.q(15), 0)
  assert_eq!(tvc.q(24), 0)
  assert_eq!(tvc.q(8), 1)
}
