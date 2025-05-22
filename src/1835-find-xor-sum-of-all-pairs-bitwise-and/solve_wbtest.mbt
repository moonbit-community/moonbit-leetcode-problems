test "example 1" {
  let arr1 = [1, 2, 3]
  let arr2 = [6, 5]
  assert_eq!(xor_sum_of_all_pairs_bitwise_and(arr1, arr2), 0)
}

test "example 2" {
  let arr1 = [12]
  let arr2 = [4]
  assert_eq!(xor_sum_of_all_pairs_bitwise_and(arr1, arr2), 4)
}

test "example 3" {
  let arr1 = [7, 8, 9]
  let arr2 = [3, 4]
  assert_eq!(xor_sum_of_all_pairs_bitwise_and(arr1, arr2), 12)
}

test "example 4" {
  let arr1 = [0]
  let arr2 = [0]
  assert_eq!(xor_sum_of_all_pairs_bitwise_and(arr1, arr2), 0)
}

test "example 5" {
  let arr1 = [1, 1, 1]
  let arr2 = [1, 1, 1]
  assert_eq!(xor_sum_of_all_pairs_bitwise_and(arr1, arr2), 1)
}
