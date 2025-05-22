fn faulty_sensor(sensor1 : Array[Int], sensor2 : Array[Int]) -> Int {
  let n = sensor1.length()
  let mut i = 0

  // Find the first index where the sensors differ
  while i < n && sensor1[i] == sensor2[i] {
    i = i + 1
  }

  // If no difference, return -1
  if i == n {
    return -1
  }

  // Check if sensor1 could be faulty
  if i + 1 < n && sensor1[i + 1] == sensor2[i] {
    let mut j = i + 1
    while j < n && sensor1[j] == sensor2[j - 1] {
      j = j + 1
    }
    if j == n {
      return 1
    }
  }

  // Check if sensor2 could be faulty
  if i + 1 < n && sensor1[i] == sensor2[i + 1] {
    let mut j = i + 1
    while j < n && sensor1[j - 1] == sensor2[j] {
      j = j + 1
    }
    if j == n {
      return 2
    }
  }

  // If it's impossible to determine the faulty sensor
  return -1
}

// Test cases
