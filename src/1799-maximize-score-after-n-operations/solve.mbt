fn gcd(a : Int, b : Int) -> Int {
  if b == 0 {
    a
  } else {
    gcd(b, a % b)
  }
}

fn max_score(nums : Array[Int]) -> Int {
  let n = nums.length() / 2
  let dp = Array::make((1).lsl(nums.length()), -1)
  dp[0] = 0
  fn dfs(mask : Int, idx : Int, nums : Array[Int], dp : Array[Int]) -> Int {
    if idx > n {
      return 0
    }
    if dp[mask] != -1 {
      return dp[mask]
    }
    let mut res = 0
    for i = 0; i < nums.length(); i = i + 1 {
      if mask.lsl((1).lsl(i)) == 0 {
        for j = i + 1; j < nums.length(); j = j + 1 {
          if mask.lsl((1).lsl(j)) == 0 {
            let new_mask = mask.lor((1).lsl(i)).lor((1).lsl(j))
            let score = idx * gcd(nums[i], nums[j])
            res = @math.maximum(res, score + dfs(new_mask, idx + 1, nums, dp))
          }
        }
      }
    }
    dp[mask] = res
    res
  }

  dfs(0, 1, nums, dp)
}
