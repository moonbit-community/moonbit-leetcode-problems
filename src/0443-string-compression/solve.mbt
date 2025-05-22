fn compress(chars : Array[Char]) -> Int {
  let n : Int = chars.length()
  let mut k : Int = 0
  let mut i : Int = 0
  while i < n {
    let mut j = i + 1
    while j < n && chars[j] == chars[i] {
      j = j + 1
    }
    chars[k] = chars[i]
    k = k + 1
    if j - i > 1 {
      let cnt : String = int_to_string(j - i)
      let mut c_index : Int = 0
      while c_index < cnt.length() {
        chars[k] = cnt[c_index]
        k = k + 1
        c_index = c_index + 1
      }
    }
    i = j
  }
  k
}

fn int_to_string(num : Int) -> String {
  if num == 0 {
    return "0"
  }
  let mut num = num
  let mut str : String = ""
  while num > 0 {
    str = (num % 10 + '0'.to_int()).to_string() + str
    num = num / 10
  }
  str
}
