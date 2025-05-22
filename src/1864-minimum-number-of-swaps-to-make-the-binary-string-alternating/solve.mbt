///|
fn min_swaps_to_make_alternating(s : String) -> Int {
  let n = s.length()
  let mut count_0 = 0
  let mut count_1 = 0

  // Count the number of '0's and '1's
  for i = 0; i < n; i = i + 1 {
    if s[i] == '0' {
      count_0 = count_0 + 1
    } else {
      count_1 = count_1 + 1
    }
  }

  // If the difference between count_0 and count_1 is more than 1, it's impossible to form an alternating string
  if (count_0 - count_1).abs() > 1 {
    return -1
  }

  // Calculate swaps needed for both patterns
  let mut swaps_010 = 0
  let mut swaps_101 = 0
  for i = 0; i < n; i = i + 1 {
    if i % 2 == 0 {
      if s[i] != '0' {
        swaps_010 = swaps_010 + 1
      }
      if s[i] != '1' {
        swaps_101 = swaps_101 + 1
      }
    } else {
      if s[i] != '1' {
        swaps_010 = swaps_010 + 1
      }
      if s[i] != '0' {
        swaps_101 = swaps_101 + 1
      }
    }
  }

  // Determine which pattern is achievable and return the minimum swaps
  if count_0 == count_1 {
    return @math.minimum(swaps_010, swaps_101)
  } else if count_0 > count_1 {
    return swaps_010
  } else {
    return swaps_101
  }
}

// Test cases
