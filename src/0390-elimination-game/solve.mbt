///|
fn last_remaining(n : Int) -> Int {
  let mut a1 = 1
  let mut an = n
  let mut step = 1
  let mut i = 0
  let mut cnt = n
  while cnt > 1 {
    if i % 2 == 1 {
      an = an - step
      if cnt % 2 == 1 {
        a1 = a1 + step
      }
    } else {
      a1 = a1 + step
      if cnt % 2 == 1 {
        an = an - step
      }
    }
    cnt = cnt / 2
    step = step * 2
    i = i + 1
  }
  a1
}
