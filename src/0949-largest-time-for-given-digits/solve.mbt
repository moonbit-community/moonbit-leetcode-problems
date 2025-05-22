///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn largest_time_from_digits(arr : Array[Int]) -> String {
  let mut ans = -1
  for i = 0; i < 4; i = i + 1 {
    for j = 0; j < 4; j = j + 1 {
      for k = 0; k < 4; k = k + 1 {
        if i != j && j != k && i != k {
          let h = arr[i] * 10 + arr[j]
          let m = arr[k] * 10 + arr[6 - i - j - k]
          if h < 24 && m < 60 {
            ans = max(ans, h * 60 + m)
          }
        }
      }
    }
  }
  if ans < 0 {
    ""
  } else {
    let hours = ans / 60
    let minutes = ans % 60
    let formatted_time = (if hours < 10 {
        "0" + hours.to_string()
      } else {
        hours.to_string()
      }) + ":" + (if minutes < 10 {
        "0" + minutes.to_string()
      } else {
        minutes.to_string()
      })
    formatted_time
  }
}
