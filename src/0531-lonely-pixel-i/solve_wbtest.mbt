test "example 1" {
  let picture : Array[Array[Char]] = [
    ['W', 'W', 'B'],
    ['W', 'B', 'W'],
    ['B', 'W', 'W'],
  ]
  assert_eq!(find_lonely_pixel(picture), 3)
}

test "example 2" {
  let picture : Array[Array[Char]] = [
    ['B', 'B', 'B'],
    ['B', 'B', 'W'],
    ['B', 'B', 'B'],
  ]
  assert_eq!(find_lonely_pixel(picture), 0)
}
