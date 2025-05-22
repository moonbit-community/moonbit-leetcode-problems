test "example" {
  let solution = Solution::new()
  let digits : Array[String] = ["1", "3", "5", "7"]
  let n : Int = 100
  assert_eq!(solution.at_most_n_given_digit_set(digits, n), 20)
}
