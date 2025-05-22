fn prev_perm_opt1(arr : Array[Int]) -> Array[Int] {
  let n = arr.length()
  let mut i = n - 1
  while i > 0 {
    if arr[i - 1] > arr[i] {
      let mut j = n - 1
      while j > i - 1 {
        if arr[j] < arr[i - 1] && arr[j] != arr[j - 1] {
          let t = arr[i - 1]
          arr[i - 1] = arr[j]
          arr[j] = t
          return arr
        }
        j = j - 1
      }
    }
    i = i - 1
  }
  arr
}
