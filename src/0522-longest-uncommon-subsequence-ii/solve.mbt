fn find_lus_length(strs : Array[String]) -> Int {
  let mut ans = -1
  let n = strs.length()
  let mut i = 0
  let mut j = 0
  while i < n {
    j = 0
    while j < n {
      if i == j {
        j = j + 1
        continue
      }
      if check(strs[j], strs[i]) {
        break
      }
      j = j + 1
    }
    if j == n {
      ans = max(ans, strs[i].length())
    }
    i = i + 1
  }
  ans
}

fn check(a : String, b : String) -> Bool {
  let mut j = 0
  let a_length = a.length()
  let b_length = b.length()
  let mut i = 0
  while i < a_length && j < b_length {
    if a[i] == b[j] {
      j = j + 1
    }
    i = i + 1
  }
  j == b_length
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
