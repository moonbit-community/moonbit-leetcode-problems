fn index_of(chr : Char, str : String) -> Int {
  let n = str.length()
  for i = 0; i < n; i = i + 1 {
    if str[i] == chr {
      return i
    }
  }
  -1
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn min_number_of_frogs(croak_of_frogs : String) -> Int {
  let n = croak_of_frogs.length()
  if n % 5 != 0 {
    return -1
  }
  let idx = fn(c : Char) -> Int { index_of(c, "croak") }
  let cnt = Array::make(5, 0)
  let mut ans = 0
  let mut x = 0
  for i = 0; i < n; i = i + 1 {
    let c = croak_of_frogs[i]
    let i = idx(c)
    cnt[i] = cnt[i] + 1
    if i == 0 {
      x = x + 1
      ans = max(ans, x)
    } else {
      cnt[i - 1] = cnt[i - 1] - 1
      if cnt[i - 1] < 0 {
        return -1
      }
      if i == 4 {
        x = x - 1
      }
    }
  }
  if x > 0 {
    -1
  } else {
    ans
  }
}
