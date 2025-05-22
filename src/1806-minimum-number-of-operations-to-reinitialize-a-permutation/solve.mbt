///|
fn min_operations_to_reinitialize_permutation(n : Int) -> Int {
  let initial_perm = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    initial_perm[i] = i
  }
  let mut perm = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    perm[i] = initial_perm[i]
  }
  let mut operations_count = 0
  while true {
    operations_count += 1
    let arr = Array::make(n, 0)
    for i = 0; i < n; i = i + 1 {
      if i % 2 == 0 {
        arr[i] = perm[i / 2]
      } else {
        arr[i] = perm[n / 2 + (i - 1) / 2]
      }
    }
    perm = arr
    let mut all_match = true
    for i = 0; i < n; i = i + 1 {
      if perm[i] != initial_perm[i] {
        all_match = false
        break
      }
    }
    if all_match {
      break
    }
  }
  operations_count
}
