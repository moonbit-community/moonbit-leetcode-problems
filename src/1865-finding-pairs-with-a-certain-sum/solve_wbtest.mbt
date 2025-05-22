///|
test "example" {
  let find_sum_pairs = FindSumPairs::new([1, 1, 2, 2, 2, 3], [1, 4, 5, 2, 5, 4])
  assert_eq!(find_sum_pairs.count(7), 8)
  find_sum_pairs.add(3, 2)
  assert_eq!(find_sum_pairs.count(8), 2)
  assert_eq!(find_sum_pairs.count(4), 1)
  find_sum_pairs.add(0, 1)
  find_sum_pairs.add(1, 1)
  assert_eq!(find_sum_pairs.count(7), 11)
}
