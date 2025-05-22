///|
fn find_highest_altitude(gain : Array[Int]) -> Int {
  let mut current_altitude = 0
  let mut highest_altitude = 0
  for i = 0; i < gain.length(); i = i + 1 {
    current_altitude = current_altitude + gain[i]
    if current_altitude > highest_altitude {
      highest_altitude = current_altitude
    }
  }
  highest_altitude
}
