///|
fn min_flips_to_alternating(s : String) -> Int {
  let n = s.length()
  let mut flips_pattern1 = 0
  let mut flips_pattern2 = 0
  for i = 0; i < n; i = i + 1 {
    // For pattern "010101..."
    if i % 2 == 0 {
      if s[i] != '0' {
        flips_pattern1 = flips_pattern1 + 1
      }
    } else if s[i] != '1' {
      flips_pattern1 = flips_pattern1 + 1
    }

    // For pattern "101010..."
    if i % 2 == 0 {
      if s[i] != '1' {
        flips_pattern2 = flips_pattern2 + 1
      }
    } else if s[i] != '0' {
      flips_pattern2 = flips_pattern2 + 1
    }
  }
  @math.minimum(flips_pattern1, flips_pattern2)
}

// Test cases
