///|
fn min_window(s : String, t : String) -> String {
  let ori : @hashmap.T[Char, Int] = @hashmap.new()
  let cnt : @hashmap.T[Char, Int] = @hashmap.new()
  let t_len = t.length()
  for i = 0; i < t_len; i = i + 1 {
    let c = t[i]
    ori.set(c, ori.get_or_default(c, 0) + 1)
  }
  let mut l = 0
  let mut r = -1
  let mut len = 2_0000_0000
  let mut ans_l = -1
  let mut ans_r = -1
  let s_len = s.length()
  while r < s_len {
    r += 1
    if r < s_len && ori.contains(s[r]) {
      cnt.set(s[r], cnt.get_or_default(s[r], 0) + 1)
    }
    while check(ori, cnt) && l <= r {
      if r - l + 1 < len {
        len = r - l + 1
        ans_l = l
        ans_r = l + len
      }
      if ori.contains(s[l]) {
        cnt.set(s[l], cnt.get_or_default(s[l], 0) - 1)
      }
      l += 1
    }
  }
  if ans_l == -1 {
    return ""
  }
  return slice(s, ans_l, ans_r)
}

///|
fn check(ori : @hashmap.T[Char, Int], cnt : @hashmap.T[Char, Int]) -> Bool {
  let mut res = true
  ori.each(fn(k, v) { if cnt.get_or_default(k, 0) < v { res = false } })
  res
}

///|
fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}
