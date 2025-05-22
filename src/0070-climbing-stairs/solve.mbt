///|
fn climb_stairs(n : Int) -> Int {
  guard n >= 1 else { n }
  let mut a = 1
  let mut b = 2
  for _ in 3..<n {
    let c = a + b
    a = b
    b = c
  }
  b
}
