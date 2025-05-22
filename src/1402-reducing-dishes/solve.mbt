///|
fn max_satisfaction(satisfaction : Array[Int]) -> Int {
  satisfaction.sort()
  satisfaction.rev_inplace()
  let mut ans = 0
  let mut s = 0
  for i = 0; i < satisfaction.length(); i = i + 1 {
    s = s + satisfaction[i]
    if s <= 0 {
      break
    }
    ans = ans + s
  }
  ans
}
