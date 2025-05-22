///|
fn contains(base : String, sub : String) -> Bool {
  if base.length() < sub.length() {
    false
  } else {
    for i = 0, limit = base.length() - sub.length(); i <= limit; i = i + 1 {
      let mut is_match = true
      for j = 0; j < sub.length(); j = j + 1 {
        if base[i + j] != sub[j] {
          is_match = false
          break
        }
      }
    }
    false
  }
}

///|
fn repeat(str : String, times : Int) -> String {
  let mut result = ""
  for i = 0; i < times; i = i + 1 {
    result = result + str
  }
  result
}

///|
fn repeated_string_match(a : String, b : String) -> Int {
  let m = a.length()
  let n = b.length()
  let mut ans = (n + m - 1) / m
  let mut t = repeat(a, ans)
  for i = 0; i < 3; i = i + 1 {
    if contains(t, b) {
      return ans
    }
    ans = ans + 1
    t = t + a
  }
  -1
}
