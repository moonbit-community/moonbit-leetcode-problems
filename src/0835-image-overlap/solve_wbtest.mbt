///|
test "example 1" {
  let img1 : Array[Array[Int]] = [[1, 1, 0], [0, 1, 0], [0, 1, 0]]
  let img2 : Array[Array[Int]] = [[0, 0, 0], [0, 1, 1], [0, 0, 1]]
  assert_eq(largest_overlap(img1, img2), 3)
}

///|
test "example 2" {
  let img1 : Array[Array[Int]] = [[1, 0], [0, 0]]
  let img2 : Array[Array[Int]] = [[0, 1], [0, 0]]
  assert_eq(largest_overlap(img1, img2), 1)
}
