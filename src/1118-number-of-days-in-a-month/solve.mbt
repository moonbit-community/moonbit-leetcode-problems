///|
fn is_leap_year(year : Int) -> Bool {
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
}

///|
fn number_of_days(year : Int, month : Int) -> Int {
  let leap = is_leap_year(year)
  let days : Array[Int] = [
    0,
    31,
    if leap {
      29
    } else {
      28
    },
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31,
  ]
  days[month]
}
