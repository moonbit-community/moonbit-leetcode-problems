///|
test "example 1" {
  let barcodes : Array[Int] = [1, 1, 1, 2, 2, 2]
  let expected : Array[Int] = [2, 1, 2, 1, 2, 1]
  assert_eq!(rearrange_barcodes(barcodes), expected)
}

///|
test "example 2" {
  let barcodes : Array[Int] = [1, 1, 1, 1, 2, 2, 3, 3]
  let expected : Array[Int] = [1, 3, 1, 3, 1, 2, 1, 2]
  assert_eq!(rearrange_barcodes(barcodes), expected)
}
