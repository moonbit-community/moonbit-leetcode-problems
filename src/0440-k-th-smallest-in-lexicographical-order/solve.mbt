///|
fn count(n : Int, curr : Int) -> Int {
  for next = curr + 1, cnt = 0, curr = curr
      curr <= n
      cnt = cnt + min(n - curr + 1, next - curr), next = next * 10, curr = curr *
        10 {

  } else {
    cnt
  }
}

///|
fn find_kth_number(n : Int, k : Int) -> Int {
  let mut k = k - 1
  let mut curr = 1
  while k > 0 {
    let cnt = count(n, curr)
    if k >= cnt {
      k = k - cnt
      curr = curr + 1
    } else {
      k = k - 1
      curr = curr * 10
    }
  }
  curr
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
