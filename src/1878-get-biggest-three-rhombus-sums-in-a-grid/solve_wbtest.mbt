test "rhombus_sum_calculator" {
  let grid1 = [
    [3, 4, 5, 1, 3],
    [3, 3, 4, 2, 3],
    [20, 30, 200, 40, 10],
    [1, 5, 5, 4, 1],
    [4, 3, 2, 2, 5],
  ]
  let calculator1 = RhombusSumCalculator::new(grid1)
  let result1 = calculator1.get_biggest_three_rhombus_sums()
  assert_eq!(result1, [228, 216, 211])
  let grid2 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  let calculator2 = RhombusSumCalculator::new(grid2)
  let result2 = calculator2.get_biggest_three_rhombus_sums()
  assert_eq!(result2, [20, 9, 8])
  let grid3 = [[7, 7, 7]]
  let calculator3 = RhombusSumCalculator::new(grid3)
  let result3 = calculator3.get_biggest_three_rhombus_sums()
  assert_eq!(result3, [7])
}
