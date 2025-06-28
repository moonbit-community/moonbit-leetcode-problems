///|
fn max_score(s : String) -> Int {
  let n = s.length()
  let mut res = 0
  let mut score = 0
  if s[0] == '0' {
    score = score + 1
  }
  // Calculate initial score based on '1's in the string except the first character
  for i = 1; i < n; i = i + 1 {
    if s[i] == '1' {
      score = score + 1
    }
  }
  // Initial result might be the initial score itself
  res = max(res, score)
  // Iterate through the string to adjust the score based on '0's and '1's
  for i = 1; i < n - 1; i = i + 1 {
    if s[i] == '0' {
      score = score + 1
    } else if s[i] == '1' {
      score = score - 1
    }
    res = max(res, score)
  }
  res
}

// Helper function to find max of two integers

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
