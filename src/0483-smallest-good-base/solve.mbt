fn string_to_long(s : String) -> Int {
  let mut res = 0
  let mut i = 0
  while i < s.length() {
    res = res * 10 + s.get(i).to_int() - '0'.to_int()
    i = i + 1
  }
  res
}

fn get_radix(len : Int, num : Int) -> Int {
  let mut l = 2
  let mut r = num - 1
  while l < r {
    let mid = (l + r) / 2
    if calc(mid, len) >= num {
      r = mid
    } else {
      l = mid + 1
    }
  }
  if calc(r, len) == num {
    r
  } else {
    -1
  }
}

fn calc(radix : Int, len : Int) -> Int {
  let mut p = 1
  let mut sum = 0
  for i = 0; i < len; i = i + 1 {
    if 2147483647 - sum < p {
      return 2147483647
    }
    sum = sum + p
    if 2147483647 / p < radix {
      p = 2147483647
    } else {
      p = p * radix
    }
  }
  sum
}

fn smallest_good_base(n : String) -> String {
  let num = string_to_long(n)
  let mut len = 63
  while len >= 2 {
    let radix = get_radix(len, num)
    if radix != -1 {
      return radix.to_string()
    }
    len = len - 1
  }
  (num - 1).to_string()
}
