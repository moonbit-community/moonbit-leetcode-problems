fn min_operations(a : String, b : String) -> Int {
  let a_len = a.length()
  let b_len = b.length()

  // Helper function to count the number of operations needed to make all characters in a string less than a given character
  fn count_operations_less_than(s : String, threshold : Char) -> Int {
    let mut count = 0
    for i = 0; i < s.length(); i = i + 1 {
      if s[i] >= threshold {
        count = count + 1
      }
    }
    count
  }

  // Helper function to count the number of operations needed to make all characters in a string equal to a given character
  fn count_operations_equal_to(s : String, target : Char) -> Int {
    let mut count = 0
    for i = 0; i < s.length(); i = i + 1 {
      if s[i] != target {
        count = count + 1
      }
    }
    count
  }

  // Condition 1: Every letter in `a` is strictly less than every letter in `b`
  let mut min_ops_condition1 = 2_0000_0000
  for ch = 'a'; ch <= 'z'; ch = Char::from_int(ch.to_int() + 1) {
    let ops_a = count_operations_less_than(a, ch)
    let ops_b = count_operations_less_than(b, ch)
    if ops_a + ops_b < min_ops_condition1 {
      min_ops_condition1 = ops_a + ops_b
    }
  }

  // Condition 2: Every letter in `b` is strictly less than every letter in `a`
  let mut min_ops_condition2 = 2_0000_0000
  for ch = 'a'; ch <= 'z'; ch = Char::from_int(ch.to_int() + 1) {
    let ops_a = count_operations_less_than(a, ch)
    let ops_b = count_operations_less_than(b, ch)
    if ops_b + ops_a < min_ops_condition2 {
      min_ops_condition2 = ops_b + ops_a
    }
  }

  // Condition 3: Both `a` and `b` consist of only one distinct letter
  let mut min_ops_condition3 = 2_0000_0000
  for ch = 'a'; ch <= 'z'; ch = Char::from_int(ch.to_int() + 1) {
    let ops_a = count_operations_equal_to(a, ch)
    let ops_b = count_operations_equal_to(b, ch)
    if ops_a + ops_b < min_ops_condition3 {
      min_ops_condition3 = ops_a + ops_b
    }
  }

  // Return the minimum of the three conditions
  @math.minimum(
    @math.minimum(min_ops_condition1, min_ops_condition2),
    min_ops_condition3,
  )
}
