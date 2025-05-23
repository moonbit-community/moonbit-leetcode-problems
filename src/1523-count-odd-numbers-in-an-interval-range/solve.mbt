///|
fn count_odds(low : Int, high : Int) -> Int {
  return (high + 1) >> (1 - low) >> 1
}
