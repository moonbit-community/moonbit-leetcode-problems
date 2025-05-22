test "overlap example" {
  let rec1 : Array[Int] = [0, 0, 2, 2]
  let rec2 : Array[Int] = [1, 1, 3, 3]
  assert_eq!(is_rectangle_overla(rec1, rec2), true)
}

test "non-overlap example" {
  let rec1 : Array[Int] = [0, 0, 1, 1]
  let rec2 : Array[Int] = [1, 1, 2, 2]
  assert_eq!(is_rectangle_overla(rec1, rec2), false)
}

test "touching example" {
  let rec1 : Array[Int] = [0, 0, 1, 1]
  let rec2 : Array[Int] = [1, 0, 2, 1]
  assert_eq!(is_rectangle_overla(rec1, rec2), false)
}
