///|
fn num_trees(n : Int) -> Int {
  fn count_trees(start : Int, end : Int) -> Int {
    if start > end {
      return 1
    }
    let mut count = 0
    let mut i = start
    while i <= end {
      let left_count = count_trees(start, i - 1)
      let right_count = count_trees(i + 1, end)
      count = count + left_count * right_count
      i = i + 1
    }
    count
  }

  count_trees(1, n)
}
