fn find_poisoned_duration(timeSeries : Array[Int], duration : Int) -> Int {
  let n : Int = timeSeries.length()
  let mut ans : Int = duration
  let mut i : Int = 1
  while i < n {
    ans = ans + min(duration, timeSeries[i] - timeSeries[i - 1])
    i = i + 1
  }
  ans
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
