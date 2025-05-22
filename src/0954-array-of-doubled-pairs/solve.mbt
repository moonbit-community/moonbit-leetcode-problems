fn can_reorder_doubled(arr : Array[Int]) -> Bool {
  let freq : @hashmap.T[Int, Int] = @hashmap.new()
  arr.each(fn(v) { freq.set(v, 1) })
  if freq.get(0).or(0).land(1) != 0 {
    return false
  }
  let keys : Array[Int] = []
  freq.each(fn(k, v) { keys.push(k) })
  keys.sort_by(fn(a, b) { abs(b) - abs(a) })
  let mut ans = true
  keys.each(
    fn(k) {
      if freq.get(k / 2).or(0) < freq.get(k).or(0) {
        ans = false
      }
      freq.set(k / 2, freq.get(k / 2).or(0) - freq.get(k).or(0))
    },
  )
  ans
}

fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}
