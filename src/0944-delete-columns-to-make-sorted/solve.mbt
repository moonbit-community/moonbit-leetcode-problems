///|
fn min_deletion_size(strs : Array[String]) -> Int {
  let n = strs.length()
  let m = strs[0].length()
  let mut ans = 0
  let mut j = 0
  while j < m {
    let mut i = 1
    while i < n {
      if strs[i][j] < strs[i - 1][j] {
        ans = ans + 1
        break
      }
      i = i + 1
    }
    j = j + 1
  }
  ans
}
