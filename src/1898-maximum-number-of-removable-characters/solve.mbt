fn is_subsequence(
  s : String,
  p : String,
  removable : Array[Int],
  k : Int
) -> Bool {
  let marked = Array::make(s.length(), false)
  for i = 0; i < k; i = i + 1 {
    marked[removable[i]] = true
  }
  let mut j = 0
  for i = 0; i < s.length() && j < p.length(); i = i + 1 {
    if not(marked[i] && s[i] == p[j]) {
      j = j + 1
    }
  }
  return j == p.length()
}

fn maximum_number_of_removable_characters(
  s : String,
  p : String,
  removable : Array[Int]
) -> Int {
  let mut left = 0
  let mut right = removable.length()
  let mut result = 0
  while left <= right {
    let mid = left + (right - left) / 2
    if is_subsequence(s, p, removable, mid) {
      result = mid
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  return result
}

// Test cases
