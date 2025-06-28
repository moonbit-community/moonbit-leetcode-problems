///|
test "example 1" {
  let logs = [(1993, 1999), (2000, 2010)]
  assert_eq(maximum_population(logs), 1993)
}

///|
test "example 2" {
  let logs = [(1950, 1961), (1960, 1971), (1970, 1981)]
  assert_eq(maximum_population(logs), 1960)
}

///|
test "example 3" {
  let logs = [(1950, 1951), (1951, 1952), (1952, 1953)]
  assert_eq(maximum_population(logs), 1950)
}
