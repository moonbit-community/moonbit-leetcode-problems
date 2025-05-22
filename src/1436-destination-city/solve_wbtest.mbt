test "example 1" {
  let paths = [
    ("London", "New York"),
    ("New York", "Lima"),
    ("Lima", "Sao Paulo"),
  ]
  assert_eq!(dest_city(paths), "Sao Paulo")
}

test "example 2" {
  let paths = [("B", "C"), ("D", "B"), ("C", "A")]
  assert_eq!(dest_city(paths), "A")
}

test "example 3" {
  let paths = [("A", "Z")]
  assert_eq!(dest_city(paths), "Z")
}
