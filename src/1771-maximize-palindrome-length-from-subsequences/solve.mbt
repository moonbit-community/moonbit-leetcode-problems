fn longest_palindrome_subseq(s : String) -> Int {
  let n = s.length()
  let dp = Array::make(n, Array::make(n, 0))
  for i = 0; i < n; i = i + 1 {
    dp[i][i] = 1
  }
  for cl = 2; cl <= n; cl = cl + 1 {
    for i = 0; i < n - cl + 1; i = i + 1 {
      let j = i + cl - 1
      if s[i] == s[j] {
        dp[i][j] = dp[i + 1][j - 1] + 2
      } else {
        dp[i][j] = @math.maximum(dp[i + 1][j], dp[i][j - 1])
      }
    }
  }
  dp[0][n - 1]
}

fn max_palindrome_length_from_subsequences(
  word1 : String,
  word2 : String
) -> Int {
  let word1_len = word1.length()
  let word2_len = word2.length()
  let combined = word1 + word2
  let combined_len = combined.length()
  let dp = Array::make(combined_len, Array::make(combined_len, 0))
  for i = 0; i < combined_len; i = i + 1 {
    dp[i][i] = 1
  }
  for cl = 2; cl <= combined_len; cl = cl + 1 {
    for i = 0; i < combined_len - cl + 1; i = i + 1 {
      let j = i + cl - 1
      if combined[i] == combined[j] {
        dp[i][j] = dp[i + 1][j - 1] + 2
      } else {
        dp[i][j] = @math.maximum(dp[i + 1][j], dp[i][j - 1])
      }
    }
  }
  let mut max_len = 0
  for i = 0; i < word1_len; i = i + 1 {
    for j = word2_len - 1; j >= 0; j = j - 1 {
      if word1[i] == word2[j] {
        max_len = @math.maximum(max_len, dp[i][word1_len + j])
      }
    }
  }
  max_len
}
