test "longest increasing path" {
  let matrix : Array[Array[Int]] = [[9, 9, 4], [6, 6, 8], [2, 1, 1]]
  let solution = Solution::{ m: 0, n: 0, matrix, f: [] }
  assert_eq!(solution.longestIncreasingPath(), 4)
}

test "longest increasing path single element" {
  let matrix : Array[Array[Int]] = [[1]]
  let solution = Solution::{ m: 0, n: 0, matrix, f: [] }
  assert_eq!(solution.longestIncreasingPath(), 1)
}
