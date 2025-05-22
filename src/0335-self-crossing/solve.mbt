fn is_self_crossing(distance : Array[Int]) -> Bool {
  let d = distance
  let mut i = 3
  while i < d.length() {
    if d[i] >= d[i - 2] && d[i - 1] <= d[i - 3] {
      return true
    }
    if i >= 4 && d[i - 1] == d[i - 3] && d[i] + d[i - 4] >= d[i - 2] {
      return true
    }
    if i >= 5 && d[i - 2] >= d[i - 4] && d[i - 1] <= d[i - 3] && d[i] >= d[i - 2] -
    d[i - 4] && d[i - 1] + d[i - 5] >= d[i - 3] {
      return true
    }
    i = i + 1
  }
  false
}
