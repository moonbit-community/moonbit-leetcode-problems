///|
fn to_string_2(n : Int) -> String {
  let mut n = n
  if n == 0 {
    return "0"
  }
  let mut result = ""
  while n > 0 {
    let remainder = n % 2
    result = remainder.to_string() + result
    n = n / 2
  }
  result
}

///|
fn contains(haystack : String, needle : String) -> Bool {
  let haystack_len = haystack.length()
  let needle_len = needle.length()
  if needle_len > haystack_len {
    return false
  }
  for i = 0; i <= haystack_len - needle_len; i = i + 1 {
    let mut found = true
    for j = 0; j < needle_len; j = j + 1 {
      if haystack[i + j] != needle[j] {
        found = false
        break
      }
    }
    if found {
      return true
    }
  }
  false
}

///|
fn query_string(s : String, n : Int) -> Bool {
  if n > 1000 {
    return false
  }
  for i = n; i > n / 2; i = i - 1 {
    if not(contains(s, to_string_2(i))) {
      return false
    }
  }
  true
}
