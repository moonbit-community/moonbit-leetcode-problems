///|
fn poor_pigs(buckets : Int, minutesToDie : Int, minutesToTest : Int) -> Int {
  let base : Int = minutesToTest / minutesToDie + 1
  let mut res : Int = 0
  let mut p : Int = 1
  while p < buckets {
    p = p * base
    res = res + 1
  }
  res
}
