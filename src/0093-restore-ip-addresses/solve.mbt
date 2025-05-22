fn substring(s : String, start : Int, end : Int) -> String {
  let mut res = ""
  let mut i = start
  while i < end {
    res = res + s.get(i).to_string()
    i = i + 1
  }
  return res
}

fn string_to_int(s : String) -> Int {
  let mut res = 0
  let mut i = 0
  while i < s.length() {
    res = res * 10 + s.get(i).to_int() - '0'.to_int()
    i = i + 1
  }
  return res
}

fn restore_ip_address(s : String) -> @immut/list.T[String] {
  let mut res = @immut/list.T::Nil
  fn dfs(ip : String, index : Int, octet : Int) {
    let mut ip_res = ip
    if index >= s.length() {
      return
    }
    // last octet check
    if octet == 3 {
      // check if the last octet is valid
      if s.get(index) != '0' || index + 1 == s.length() {
        if string_to_int(substring(s, index, s.length())) < 256 {
          ip_res = ip_res + substring(s, index, s.length())
          res = @immut/list.T::Cons(ip_res, @immut/list.T::Nil)
        }
      }
      return
    }
    let mut i = 1
    while i <= 3 && index + i < s.length() {
      if string_to_int(substring(s, index, index + i)) < 256 {
        dfs(ip_res + substring(s, index, index + i) + ".", index + i, octet + 1)
      }
      // check for leading 0
      if s.get(index) == '0' {
        return
      }
      i = i + 1
    }
  }

  let mut i = 1
  while i <= 3 && i < s.length() {
    if string_to_int(substring(s, 0, i)) < 256 {
      dfs(substring(s, 0, i) + ".", i, 1)
    }
    // check for leading 0
    if s.get(0) == '0' {
      return res
    }
    i = i + 1
  }
  return res
}
