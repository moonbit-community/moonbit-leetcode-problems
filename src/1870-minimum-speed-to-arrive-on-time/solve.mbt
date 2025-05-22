///|
fn calculate_time(dist : Array[Int], speed : Int) -> Double {
  let mut total_time = 0.0
  for i = 0; i < dist.length(); i = i + 1 {
    let segment_time = dist[i].to_double() / speed.to_double()
    total_time = total_time + segment_time
    if i < dist.length() - 1 {
      total_time = total_time.ceil()
    }
  }
  total_time
}

///|
fn min_speed_to_arrive_on_time(dist : Array[Int], hour : Double) -> Int {
  if (dist.length() - 1).to_double() >= hour {
    return -1
  }
  let mut left = 1
  let mut right = 10_000_000
  let mut result = -1
  while left <= right {
    let mid = left + (right - left) / 2
    if calculate_time(dist, mid) <= hour {
      result = mid
      right = mid - 1
    } else {
      left = mid + 1
    }
  }
  result
}

// Test cases
