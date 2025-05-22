///|
fn check(tag : String) -> Bool {
  let n = tag.length()
  if n < 1 || n > 9 {
    false
  } else {
    let mut is_upper = true
    let mut i = 0
    while i < n && is_upper {
      is_upper = tag[i] >= 'A' && tag[i] <= 'Z'
      i = i + 1
    }
    is_upper
  }
}

///|
fn isValid(code : String) -> Bool {
  let stk : Array[String] = Array::new()
  let mut i = 0
  while i < code.length() {
    if i > 0 && stk.is_empty() {
      return false
    }
    if slice(code, i, min(i + 9, code.length())) == "<![CDATA[" {
      i = find(code, "]]>", i + 9)
      if i < 0 {
        return false
      }
      i = i + 2
    } else if slice(code, i, min(i + 2, code.length())) == "</" {
      let j = i + 2
      i = find(code, ">", j)
      if i < 0 {
        return false
      }
      let t = slice(code, j, i)
      let topElem = stk.pop()
      if not(check(t)) || topElem == None || not(topElem == Some(t)) {
        return false
      }
    } else if code[i] == '<' {
      let j = i + 1
      i = find(code, ">", j)
      if i < 0 {
        return false
      }
      let t = slice(code, j, i)
      if not(check(t)) {
        return false
      }
      stk.push(t)
    }
    i = i + 1
  }
  stk.is_empty()
}

///|
fn find(string : String, pattern : String, start : Int) -> Int {
  let mut i = start
  while i <= string.length() - pattern.length() {
    if slice(string, i, i + pattern.length()) == pattern {
      return i
    }
    i = i + 1
  }
  -1
}

///|
fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
