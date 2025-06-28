///|
test "example 1" {
  let solution = Solution::{
    costs: [2, 7, 15],
    days: [1, 4, 6, 7, 8, 20],
    f: [],
    n: 0,
  }
  assert_eq(solution.mincost_tickets(), 11)
}

///|
test "example 2" {
  let solution = Solution::{
    costs: [10, 60, 120],
    days: [1, 3, 5, 7, 12],
    f: [],
    n: 0,
  }
  assert_eq(solution.mincost_tickets(), 50)
}
