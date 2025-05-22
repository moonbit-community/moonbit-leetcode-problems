fn idx(c : String) -> Int {
  c[0].to_int() - 'a'.to_int()
}

fn max(cnt : Array[Int], index : Int) -> Int {
  let target = cnt[index]
  let mut max_val = 0
  for i = 0; i < cnt.length(); i = i + 1 {
    if cnt[i] > max_val {
      max_val = cnt[i]
    }
  }
  if target > max_val {
    max_val = target
  }
  max_val
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max_rep_opt1(text : String) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  for i = 0; i < text.length(); i = i + 1 {
    let c = text[i]
    cnt[idx(c.to_string())] = cnt[idx(c.to_string())] + 1
  }
  let mut ans = 0
  let n = text.length()
  let mut i = 0
  while i < n {
    let mut j = i
    while j < n && text[j] == text[i] {
      j = j + 1
    }
    let l = j - i
    let mut k = j + 1
    while k < n && text[k] == text[i] {
      k = k + 1
    }
    let r = k - j - 1
    ans = max([ans, min(cnt[idx(text[i].to_string())], l + r + 1)], 0)
    i = j
  }
  ans
}
