test "example 1" {
  let nums : Array[Int] = [1, -2, 3, -2]
  assert_eq!(max_subarray_sum_circular(nums), 3)
}

test "example 2" {
  let nums : Array[Int] = [5, -3, 5]
  assert_eq!(max_subarray_sum_circular(nums), 10)
}

test "example 3" {
  let nums : Array[Int] = [-3, -2, -3]
  assert_eq!(max_subarray_sum_circular(nums), -2)
}
