test "example 1" {
  let arr = [1, 1, 1, 2, 2, 3]
  remove_duplicates(arr)
  inspect!(arr, content="[1, 1, 2, 2, 3, 3]")
}

test "example 2" {
  let arr = [0, 0, 1, 1, 1, 1, 2, 3, 3]
  remove_duplicates(arr)
  inspect!(arr, content="[0, 0, 1, 1, 2, 3, 3, 3, 3]")
}
