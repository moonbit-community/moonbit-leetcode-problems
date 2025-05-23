///|
type IntInt (Int, Int) derive(Hash, Eq)

///|
fn min_changes(nums : Array[Int], k : Int) -> Int {
  let n = nums.length()
  let xor_counts : @hashmap.T[IntInt, Int] = @hashmap.new()
  let max_num = 1 << 10
  for i = 0; i < n; i = i + 1 {
    let key = (i % k, nums[i])
    xor_counts.set(key, xor_counts.get_or_default(key, 0) + 1)
  }
  let dp = Array::make(k, Array::make(max_num, n))
  for i = 0; i < k; i = i + 1 {
    let mut max_count = 0
    let mut total = 0
    let prev_min = if i == 0 {
      0
    } else {
      dp[i - 1].fold(fn(acc, v) { if acc < v { acc } else { v } }, init=n)
    }
    for j = 0; j < max_num; j = j + 1 {
      dp[i][j] = prev_min + (i + 1)
    }
    xor_counts.each(fn(key, count) {
      if key._.0 == i {
        total += count
        max_count = @math.maximum(max_count, count)
        for j = 0; j < max_num; j = j + 1 {
          dp[i][j ^ key._.1] = @math.minimum(
            dp[i][j ^ key._.1],
            dp[i - 1][j] + (i + 1) - count,
          )
        }
      }
    })
    dp[i][0] = @math.minimum(dp[i][0], prev_min + (i + 1) - max_count)
  }
  dp[k - 1][0]
}
