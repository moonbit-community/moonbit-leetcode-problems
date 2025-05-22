fn contains_pattern(arr : Array[Int], m : Int, k : Int) -> Bool {
  let n = arr.length()
  for i = 0; i <= n - m * k; i = i + 1 {
    let mut j = 0
    while j < m * k {
      if arr[i + j] != arr[i + j % m] {
        break
      }
      j = j + 1
    }
    if j == m * k {
      return true
    }
  }
  false
}
