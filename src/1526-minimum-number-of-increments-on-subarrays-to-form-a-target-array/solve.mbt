fn min_number_operations(target : Array[Int]) -> Int {
  let mut f = target[0]
  let mut i = 1
  while i < target.length() {
    if target[i] > target[i - 1] {
      f = f + (target[i] - target[i - 1])
    }
    i = i + 1
  }
  f
}
