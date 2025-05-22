fn max_depth(s : String) -> Int {
  let mut ans = 0
  let mut d = 0
  let length = s.length()
  for i = 0; i < length; i = i + 1 {
    let c = s[i]
    match c {
      '(' => {
        d = d + 1
        ans = max(ans, d)
      }
      ')' => d = d - 1
      _ => ()
    }
  }
  ans
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
