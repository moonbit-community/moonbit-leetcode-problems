///|
fn my_pow(x : Double, n : Int) -> Double {
  if n >= 0 {
    qpow(x, n)
  } else {
    1.0 / qpow(x, -n)
  }
}

///|
fn qpow(a : Double, n : Int) -> Double {
  let mut ans = 1.0
  for i = n, p = a; i > 0; i = i / 2, p = p * p {
    if i % 2 == 1 {
      ans = ans * p
    }
  }
  ans
}
