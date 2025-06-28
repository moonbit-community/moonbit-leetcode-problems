///|
test "example 1" {
  let books : Array[Array[Int]] = [
    [1, 1],
    [2, 3],
    [2, 3],
    [1, 1],
    [1, 1],
    [1, 1],
    [1, 2],
  ]
  let shelf_width = 4
  assert_eq(min_height_shelves(books, shelf_width), 6)
}

///|
test "example 2" {
  let books : Array[Array[Int]] = [[1, 3], [2, 4], [3, 2]]
  let shelf_width = 6
  assert_eq(min_height_shelves(books, shelf_width), 4)
}
