///|
fn sum_even_after_queries(
  nums : Array[Int],
  queries : Array[Array[Int]]
) -> Array[Int] {
  let mut s = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let x = nums[i]
    if x % 2 == 0 {
      s = s + x
    }
  }
  let m = queries.length()
  let ans : Array[Int] = Array::make(m, 0)
  let mut k = 0
  let mut i = 0
  while i < m {
    let v = queries[i][0]
    let idx = queries[i][1]
    if nums[idx] % 2 == 0 {
      s = s - nums[idx]
    }
    nums[idx] = nums[idx] + v
    if nums[idx] % 2 == 0 {
      s = s + nums[idx]
    }
    ans[k] = s
    k = k + 1
    i = i + 1
  }
  ans
}
