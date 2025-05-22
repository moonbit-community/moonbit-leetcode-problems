///|
fn max_coins(piles : Array[Int]) -> Int {
  let sorted_piles = @immut/list.T::from_array(piles).sort().to_array()
  let n = sorted_piles.length()
  let mut ans = 0
  let loops = n / 3
  for i = 1; i <= loops; i = i + 1 {
    ans = ans + sorted_piles[n - 2 * i]
  }
  ans
}
