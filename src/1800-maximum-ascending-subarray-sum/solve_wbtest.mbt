test "example 1" {
  let nums = [10, 20, 30, 5, 10, 50]
  assert_eq!(max_ascending_subarray_sum(nums), 65)
}

test "example 2" {
  let nums = [10, 20, 30, 40, 50]
  assert_eq!(max_ascending_subarray_sum(nums), 150)
}

test "example 3" {
  let nums = [12, 17, 15, 13, 10, 11, 12]
  assert_eq!(max_ascending_subarray_sum(nums), 33)
}

test "single element" {
  let nums = [5]
  assert_eq!(max_ascending_subarray_sum(nums), 5)
}

test "all elements same" {
  let nums = [2, 2, 2, 2]
  assert_eq!(max_ascending_subarray_sum(nums), 2)
}

test "descending elements" {
  let nums = [50, 40, 30, 20, 10]
  assert_eq!(max_ascending_subarray_sum(nums), 50)
}
