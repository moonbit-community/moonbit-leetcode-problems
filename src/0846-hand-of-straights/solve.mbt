///|
fn is_n_straight_hand(hand : Array[Int], groupSize : Int) -> Bool {
  let cnt : @hashmap.T[Int, Int] = @hashmap.new()
  hand.each(fn(v) { cnt.set(v, cnt.get(v).or(0) + 1) })
  hand.sort()
  let mut ans = true
  hand.each(fn(v) {
    if cnt.contains(v) {
      for i = 0; i < v + groupSize; i = i + 1 {
        if not(cnt.contains(i)) {
          ans = false
        }
      }
    }
  })
  ans
}
