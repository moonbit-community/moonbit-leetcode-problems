fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn car_pooling(trips : Array[(Int, Int, Int)], capacity : Int) -> Bool {
  let mut mx = 0
  trips.each(fn(trip) { mx = max(mx, trip.2) })
  let diffs = Array::make(mx + 1, 0)
  for i = 0; i < trips.length(); i = i + 1 {
    let trip = trips[i]
    let pass_num = trip.0
    let start = trip.1
    let end = trip.2
    diffs[start] = diffs[start] + pass_num
    diffs[end] = diffs[end] - pass_num
  }
  let mut sum = 0
  for i = 0; i < diffs.length(); i = i + 1 {
    let diff = diffs[i]
    sum = sum + diff
    if sum > capacity {
      return false
    }
  }
  true
}
