fn ship_within_days(weights : Array[Int], days : Int) -> Int {
  let mut left = 0
  let mut right = 0
  weights.each(
    fn(weight) {
      left = @math.maximum(left, right)
      right = right + weight
    },
  )
  fn check(mx : Int, weights : Array[Int], days : Int) -> Bool {
    let mut ws = 0
    let mut cnt = 1
    weights.each(
      fn(w) {
        ws = ws + w
        if ws > mx {
          ws = w
          cnt = cnt + 1
        }
      },
    )
    cnt <= days
  }

  while left < right {
    let mid = (left + right) / 2
    if check(mid, weights, days) {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}
