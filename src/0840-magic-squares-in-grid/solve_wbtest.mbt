///|
test "example" {
  let grid : Array[Array[Int]] = [[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]]
  let solution = Solution::{ m: 3, n: 4, grid }
  assert_eq!(solution.num_magic_squares_inside(), 1)
}
