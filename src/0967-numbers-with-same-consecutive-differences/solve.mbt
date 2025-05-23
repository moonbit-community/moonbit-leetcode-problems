///|
fn dfs(
  n : Int,
  k : Int,
  t : Int,
  res : @immut/list.T[Int]
) -> @immut/list.T[Int] {
  if n == 0 {
    res.concat(@immut/list.of([t]))
  } else {
    let last = t % 10
    let mut result = res
    if last + k <= 9 {
      result = dfs(n - 1, k, t * 10 + last + k, result)
    }
    if last - k >= 0 && k != 0 {
      result = dfs(n - 1, k, t * 10 + last - k, result)
    }
    result
  }
}

///|
fn nums_same_consec_diff(n : Int, k : Int) -> @immut/list.T[Int] {
  let mut res : @immut/list.T[Int] = @immut/list.T::Nil
  for i = 1; i < 10; i = i + 1 {
    res = dfs(n - 1, k, i, res)
  }
  res
}
