///|
fn group_anagrams(strs : Array[String]) -> Array[Array[String]] {
  let map : @hashmap.T[String, Array[String]] = @hashmap.new()
  strs.each(fn(str) {
    let counts = Array::make(26, 0)
    let len = str.length()
    for i = 0; i < len; i = i + 1 {
      counts[str[i].to_int() - 'a'.to_int()] += 1
    }
    let mut str_buffer = ""
    for i = 0; i < 26; i = i + 1 {
      if counts[i] != 0 {
        str_buffer += ('a'.to_int() + i).to_string()
        str_buffer += counts[i].to_string()
      }
    }
    let key = str_buffer
    let list = map.get_or_default(key, [])
    list.push(str)
    map.set(key, list)
  })
  let res : Array[Array[String]] = Array::make(map.size(), [])
  map.eachi(fn(i, k, v) { res[i] = v })
  res.sort_by(fn(a, b) { a.length() - b.length() })
  res
}
