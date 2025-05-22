///|
fn add_strings(num1 : String, num2 : String) -> String {
  let mut i = num1.length() - 1
  let mut j = num2.length() - 1
  let mut ans = ""
  let mut c = 0
  while i >= 0 || j >= 0 || c > 0 {
    let a = if i < 0 { 0 } else { num1.get(i).to_int() - '0'.to_int() }
    let b = if j < 0 { 0 } else { num2.get(j).to_int() - '0'.to_int() }
    c = c + a + b
    ans = (c % 10).to_string() + ans
    c = c / 10
    if i > 0 {
      i = i - 1
    } else {
      i = -1
    }
    if j > 0 {
      j = j - 1
    } else {
      j = -1
    }
  }
  ans
}

fn sub_strings(num1 : String, num2 : String) -> String {
  let m = num1.length()
  let n = num2.length()
  let neg = m < n || (m == n && num1 < num2)
  let num1 = if neg { num2 } else { num1 }
  let num2 = if neg { num1 } else { num2 }
  let mut ans = ""
  let mut c = 0
  for i = num1.length() - 1, j = num2.length() - 1; i >= 0; {
    let diff = num1.get(i).to_int() - '0'.to_int() - c - (if j < 0 {
        0
      } else {
        num2.get(j).to_int() - '0'.to_int()
      })
    ans = ((diff + 10) % 10).to_string() + ans
    c = if diff < 0 { 1 } else { 0 }
    if i > 0 {
      continue i - 1, j
    } else {
      continue -1, j
    }
    if j > 0 {
      continue i, j - 1
    } else {
      continue i, -1
    }
  }
  while ans.length() > 1 && ans.get(ans.length() - 1) == '0' {
    ans = slice(ans, 0, ans.length() - 1)
  }
  if neg {
    ans = ans + "-"
  }
  ans = reverse(ans)
  ans
}

///|
fn reverse(s : String) -> String {
  let mut result = ""
  for i = s.length() - 1; i >= 0; i = i - 1 {
    result = result + s.get(i).to_string()
  }
  result
}

///|
fn slice(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  for i = start; i < end; i = i + 1 {
    result = result + s.get(i).to_string()
  }
  result
}
