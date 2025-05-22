fn to_lowercase(s : String) -> String {
  let mut result = ""
  let a_code = 'a'.to_int()
  let z_code = 'z'.to_int()
  let diff = 'A'.to_int() - a_code
  for i = 0; i < s.length(); i = i + 1 {
    let c = s[i]
    if c.to_int() >= 'A'.to_int() && c.to_int() <= 'Z'.to_int() {
      result = result + Char::from_int(c.to_int() - diff).to_string()
    } else {
      result = result + c.to_string()
    }
  }
  result
}

fn count_uppercase_letters(s : String) -> Int {
  let mut count = 0
  for i = 0; i < s.length(); i = i + 1 {
    if s[i].to_int() >= 'A'.to_int() && s[i].to_int() <= 'Z'.to_int() {
      count = count + 1
    }
  }
  count
}

fn maskPII(s : String) -> String {
  if count_uppercase_letters(s) > 0 { // Treat as email
    let s = to_lowercase(s)
    let mut i = -1
    for si = 0; si < s.length(); si = si + 1 {
      if s[si] == '@' {
        i = si
      }
    }
    let masked = s[0].to_string() + "*****" + s.substring(
        start=i - 1,
        end=s.length(),
      )
    masked
  } else { // Treat as phone number
    let mut digits = ""
    for i = 0; i < s.length(); i = i + 1 {
      let c = s[i]
      if c.to_int() >= '0'.to_int() && c.to_int() <= '9'.to_int() {
        digits = digits + c.to_string()
      }
    }
    let cnt = digits.length() - 10
    let suf = "***-***-" + digits.substring(
        start=digits.length() - 4,
        end=digits.length(),
      )
    if cnt == 0 {
      suf
    } else {
      String::make(cnt + 1, '+') + "-" + suf
    }
  }
}
