///|
fn is_range_covered(
  ranges : Array[Array[Int]],
  left : Int,
  right : Int
) -> Bool {
  for i = left; i <= right; i = i + 1 {
    let mut covered = false
    for j = 0; j < ranges.length(); j = j + 1 {
      let range = ranges[j]
      if i >= range[0] && i <= range[1] {
        covered = true
        break
      }
    }
    if not(covered) {
      return false
    }
  }
  return true
}

// Test cases
