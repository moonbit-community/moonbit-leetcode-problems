///|
fn my_sqrt(x : Int) -> Int {
  if x == 0 {
    return 0
  }
  let s = x
  let ans = my_sqrt_newtwon(x.to_double(), s.to_double())
  ans.to_int()
}

///|
fn my_sqrt_newtwon(x : Double, s : Double) -> Double {
  let res = (x + s / x) / 2.0
  if res == x {
    return x
  } else {
    my_sqrt_newtwon(res, s)
  }
}
