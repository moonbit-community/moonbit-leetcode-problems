///|
fn angle_clock(hour : Int, minutes : Int) -> Double {
  let hour = hour.to_double()
  let minutes = minutes.to_double()
  let h = 30.0 * hour + 0.5 * minutes
  let m = 6.0 * minutes
  let diff = abs_double(h - m)
  min_double(diff, 360.0 - diff)
}

///|
fn abs_double(x : Double) -> Double {
  if x < 0.0 {
    -x
  } else {
    x
  }
}

///|
fn min_double(a : Double, b : Double) -> Double {
  if a < b {
    a
  } else {
    b
  }
}
