test "floodFill example" {
  let image : Array[Array[Int]] = [[1, 1, 1], [1, 1, 0], [1, 0, 1]]
  let sr = 1
  let sc = 1
  let color = 2
  let filled_image = flood_fill(image, sr, sc, color)
  let expected : Array[Array[Int]] = [[2, 2, 2], [2, 2, 0], [2, 0, 1]]
  assert_eq!(filled_image, expected)
}
