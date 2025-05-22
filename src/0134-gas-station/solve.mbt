///|
fn can_complete_circuit(gas : Array[Int], cost : Array[Int]) -> Int {
  let n = gas.length()
  let mut i = n - 1
  let mut j = n - 1
  let mut cnt = 0
  let mut s = 0
  while cnt < n {
    s += gas[j] - cost[j]
    cnt += 1
    j = (j + 1) % n
    while s < 0 && cnt < n {
      i -= 1
      s += gas[i] - cost[i]
      cnt += 1
    }
  }
  if s < 0 {
    -1
  } else {
    i
  }
}
