///|
fn count_odds(low : Int, high : Int) -> Int {
  return (high + 1).lsr(1) - low.lsr(1)
}
