///|
fn unique_character_string(s : String) -> Int {
  let d : Array[Array[Int]] = Array::make(26, [])
  for i = 0; i < 26; i = i + 1 {
    d[i].push(-1)
  }
  for i = 0; i < s.length(); i = i + 1 {
    let index = s[i].to_int() - 'A'.to_int()
    d[index].push(i)
  }
  let mut ans = 0
  d.each(fn(list) {
    list.push(s.length())
    let mut i = 1
    while i < list.length() - 1 {
      let prev = list[i - 1]
      let current = list[i]
      let next = list[i + 1]
      ans = ans + (current - prev) * (next - current)
      i = i + 1
    }
  })
  ans
}
