///|
fn fib(n : Int) -> Int {
  let mut a = 0
  let mut b = 1
  let mut count = n
  while count > 0 {
    let c = a + b
    a = b
    b = c
    count = count - 1
  }
  a
}
