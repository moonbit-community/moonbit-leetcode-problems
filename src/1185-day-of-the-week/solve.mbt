fn floor_div(a : Int, b : Int) -> Int {
  a / b
}

fn day_of_the_week(d : Int, m : Int, y : Int) -> String {
  let mut m = m
  let mut y = y
  if m < 3 {
    m = m + 12
    y = y - 1
  }
  let c = floor_div(y, 100)
  y = y % 100
  let w = (floor_div(c, 4) - 2 * c + y + floor_div(y, 4) + floor_div(
      13 * (m + 1),
      5,
    ) + d - 1) % 7
  let weeks = @immut/list.T::of(
    [
      "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
    ],
  )
  weeks.nth_exn((w + 7) % 7)
}
