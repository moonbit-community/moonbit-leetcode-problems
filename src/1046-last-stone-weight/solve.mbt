///|
fn last_stone_weight(stones : Array[Int]) -> Int {
  let pq : @priority_queue.T[Int] = @priority_queue.from_array(stones)
  while pq.length() > 1 {
    let y = pq.pop().or(0)
    let x = pq.pop().or(0)
    if x != y {
      pq.push(y - x)
    }
  }
  if pq.length() == 0 {
    0
  } else {
    pq.peek().or(0)
  }
}
