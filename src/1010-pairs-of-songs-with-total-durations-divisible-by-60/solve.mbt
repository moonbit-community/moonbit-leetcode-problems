fn num_pairs_divisible_by_60(time : Array[Int]) -> Int {
  let cnt : Array[Int] = Array::make(60, 0)
  time.each(
    fn(t) {
      let index = t % 60
      cnt[index] = cnt[index] + 1
    },
  )
  let mut ans = 0
  for x = 1; x < 30; x = x + 1 {
    ans = ans + cnt[x] * cnt[60 - x]
  }
  ans = ans + cnt[0] * (cnt[0] - 1) / 2
  ans = ans + cnt[30] * (cnt[30] - 1) / 2
  ans
}
