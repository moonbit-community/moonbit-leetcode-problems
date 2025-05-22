///|
test "example 1" {
  let boxes : Array[Int] = [4, 3, 4, 1]
  let warehouse : Array[Int] = [5, 3, 3, 4, 1]
  assert_eq!(max_boxes_in_warehouse(boxes, warehouse), 3)
}

///|
test "example 2" {
  let boxes : Array[Int] = [1, 2, 2, 3, 4]
  let warehouse : Array[Int] = [3, 4, 1, 2]
  assert_eq!(max_boxes_in_warehouse(boxes, warehouse), 3)
}
