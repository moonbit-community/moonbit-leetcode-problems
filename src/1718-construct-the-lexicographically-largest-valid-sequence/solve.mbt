///|
fn construct_lexicographically_largest_valid_sequence(n : Int) -> Array[Int] {
  let result = Array::make(2 * n - 1, 0)
  let used = Array::make(n + 1, false)
  fn backtrack(result : Array[Int], used : Array[Bool], index : Int) -> Bool {
    if index == result.length() {
      return true
    }
    if result[index] != 0 {
      return backtrack(result, used, index + 1)
    }
    for i = n; i > 0; i = i - 1 {
      if not(used[i]) {
        if i == 1 || (index + i < result.length() && result[index + i] == 0) {
          result[index] = i
          if i != 1 {
            result[index + i] = i
          }
          used[i] = true
          if backtrack(result, used, index + 1) {
            return true
          }
          result[index] = 0
          if i != 1 {
            result[index + i] = 0
          }
          used[i] = false
        }
      }
    }
    return false
  }

  backtrack(result, used, 0) |> ignore
  return result
}
