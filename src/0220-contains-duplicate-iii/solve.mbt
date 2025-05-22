// MoonBit doesn't directly support classes or the exact data structures and methods like TreeSet in TypeScript.
// This is a conceptual adaptation focusing on the containsNearbyAlmostDuplicate functionality.

// Since implementing a Red-Black Tree from scratch in MoonBit would be complex and beyond the scope,
// and given MoonBit's limitations, we'll focus on a simplified approach.

fn abs_diff_is_not_greater(a : Int, b : Int, max_diff : Int) -> Bool {
  if a > b {
    return a - b <= max_diff
  } else {
    return b - a <= max_diff
  }
}

fn contains_nearby_almost_duplicate(
  nums : Array[Int],
  index_diff : Int,
  value_diff : Int
) -> Bool {
  let n = nums.length()
  let mut i = 0
  while i < n {
    let mut j = i + 1
    while j < n && j <= i + index_diff {
      if abs_diff_is_not_greater(nums[i], nums[j], value_diff) {
        return true
      }
      j = j + 1
    }
    i = i + 1
  }
  return false
}
