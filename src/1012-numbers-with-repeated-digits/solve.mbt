///|
fn num_dup_digits_at_most_n(n : Int) -> Int {
  n - f(n)
}

///|
fn f(n : Int) -> Int {
  let nums : Array[Int] = []
  let mut n_temp = n
  let mut i = -1
  while n_temp != 0 {
    i = i + 1
    nums[i] = n_temp % 10
    n_temp = n_temp / 10
  }
  fn create_2d_array(
    rows : Int,
    cols : Int,
    initial : Int
  ) -> Array[Array[Int]] {
    let outer : Array[Array[Int]] = []
    for i = 0; i < rows; i = i + 1 {
      let inner : Array[Int] = []
      for j = 0; j < cols; j = j + 1 {
        inner[j] = initial
      }
      outer[i] = inner
    }
    outer
  }

  let dp = create_2d_array(11, (1).lsl(11), -1)
  fn dfs(
    pos : Int,
    mask : Int,
    lead : Bool,
    limit : Bool,
    nums : Array[Int],
    dp : Array[Array[Int]]
  ) -> Int {
    if pos < 0 {
      if lead {
        0
      } else {
        1
      }
    } else if not(lead) && not(limit) && dp[pos][mask] != -1 {
      dp[pos][mask]
    } else {
      let up = if limit { nums[pos] } else { 9 }
      let mut ans = 0
      for i = 0; i <= up; i = i + 1 {
        if (mask.lsr(i) & 1) == 1 {
          continue
        }
        if lead && i == 0 {
          ans = ans + dfs(pos - 1, mask, lead, limit && i == up, nums, dp)
        } else {
          ans = ans +
            dfs(pos - 1, mask.lor(1).lsl(i), false, limit && i == up, nums, dp)
        }
      }
      if not(lead) && not(limit) {
        dp[pos][mask] = ans
      }
      ans
    }
  }

  dfs(i, 0, true, true, nums, dp)
}
