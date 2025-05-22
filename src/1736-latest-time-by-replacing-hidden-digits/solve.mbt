fn latest_time_by_replacing_hidden_digits(time : String) -> String {
  let time_chars = Array::make(5, ' ')
  for i = 0; i < 5; i = i + 1 {
    time_chars[i] = time[i]
  }
  if time_chars[0] == '?' {
    if time_chars[1] == '?' || time_chars[1] <= '3' {
      time_chars[0] = '2'
    } else {
      time_chars[0] = '1'
    }
  }
  if time_chars[1] == '?' {
    if time_chars[0] == '2' {
      time_chars[1] = '3'
    } else {
      time_chars[1] = '9'
    }
  }
  if time_chars[3] == '?' {
    time_chars[3] = '5'
  }
  if time_chars[4] == '?' {
    time_chars[4] = '9'
  }
  let mut result = ""
  for i = 0; i < 5; i = i + 1 {
    result = result + time_chars[i].to_string()
  }
  result
}
