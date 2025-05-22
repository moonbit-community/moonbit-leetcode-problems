type IntInt (Int, Int)

fn IntInt::compare(self : IntInt, other : IntInt) -> Int {
  let compare_first = self.0.0.compare(other.0.0)
  if compare_first == 0 {
    self.0.1.compare(other.0.1)
  } else {
    compare_first
  }
}

fn IntInt::op_equal(self : IntInt, other : IntInt) -> Bool {
  self.0.0 == other.0.0 && self.0.1 == other.0.1
}

fn max_number_of_eaten_apples(apples : Array[Int], days : Array[Int]) -> Int {
  let n = apples.length()
  let pq : @priority_queue.T[IntInt] = @priority_queue.T::new()
  let mut eaten = 0
  let mut day = 0
  while day < n || not(pq.is_empty()) {
    if day < n {
      let apple_count = apples[day]
      let rotten_day = day + days[day]
      if apple_count > 0 {
        pq.push((rotten_day, apple_count))
      }
    }
    while not(pq.is_empty()) {
      let (rotten_day, apple_count) = pq.peek().unwrap().0
      if rotten_day <= day {
        pq.pop() |> ignore
      } else {
        break
      }
    }
    if not(pq.is_empty()) {
      let (rotten_day, apple_count) = pq.peek().unwrap().0
      if apple_count > 0 {
        pq.pop() |> ignore
        pq.push((rotten_day, apple_count - 1))
        eaten = eaten + 1
      }
    }
    day = day + 1
  }
  return eaten
}
