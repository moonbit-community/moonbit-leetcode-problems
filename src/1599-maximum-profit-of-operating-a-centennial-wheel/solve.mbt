///|
fn min(value1 : Int, value2 : Int) -> Int {
  if value1 < value2 {
    value1
  } else {
    value2
  }
}

///|
fn min_operations_max_profit(
  customers : Array[Int],
  boarding_cost : Int,
  running_cost : Int
) -> Int {
  let mut ans = -1
  let mut mx = 0
  let mut t = 0
  let mut wait = 0
  let mut i = 0
  while wait > 0 || i < customers.length() {
    wait = wait + (if i < customers.length() { customers[i] } else { 0 })
    let up = min(4, wait)
    wait = wait - up
    i = i + 1
    t = t + (up * boarding_cost - running_cost)
    if t > mx {
      mx = t
      ans = i
    }
  }
  if mx > 0 {
    ans
  } else {
    -1
  }
}
