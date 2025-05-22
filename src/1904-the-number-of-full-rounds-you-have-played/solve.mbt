struct Time {
  hours : Int
  minutes : Int
}

fn parse_time(time_str : String) -> Time! {
  let parts = time_str.split(":").to_array()
  let hours = @strconv.parse_int!(parts[0])
  let minutes = @strconv.parse_int!(parts[1])
  Time::{ hours, minutes }
}

fn time_to_minutes(time : Time) -> Int {
  time.hours * 60 + time.minutes
}

fn count_full_rounds(login_time : Time, logout_time : Time) -> Int {
  let login_minutes = time_to_minutes(login_time)
  let mut logout_minutes = time_to_minutes(logout_time)
  if logout_minutes < login_minutes {
    logout_minutes += 24 * 60
  }
  let start_round = (login_minutes + 14) / 15
  let end_round = logout_minutes / 15
  end_round - start_round
}

fn count_full_rounds_string(
  login_time_str : String,
  logout_time_str : String
) -> Int! {
  let login_time = parse_time!(login_time_str)
  let logout_time = parse_time!(logout_time_str)
  count_full_rounds(login_time, logout_time)
}
