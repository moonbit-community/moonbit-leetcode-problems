///|
fn decrypt(code : Array[Int], k : Int) -> Array[Int] {
  let n = code.length()
  if k == 0 {
    return Array::make(n, 0)
  }
  let is_prefix = k < 0
  let k = if is_prefix { -k } else { k }
  let map : @hashmap.T[Int, (Int, Int)] = @hashmap.new()
  let mut prefix = 0
  let mut suffix = 0
  for i = 1; i <= k; i = i + 1 {
    prefix = prefix + code[n - i]
    suffix = suffix + code[i % n] // Handles out of bounds by circling back
  }
  map.set(0, (prefix, suffix))
  for i = 1; i < n; i = i + 1 {
    let mut p = map.get(i - 1).unwrap().0
    let mut s = map.get(i - 1).unwrap().1
    p = p -
      (if n - k - 1 + i < n { code[n - k - 1 + i] } else { code[i - k - 1] })
    p = p + code[i - 1]
    s = s - code[i]
    s = s + (if i + k < n { code[i + k] } else { code[i + k - n] })
    map.set(i, (p, s))
  }
  for i = 0; i < n; i = i + 1 {
    code[i] = if not(is_prefix) {
      map.get(i).unwrap().1
    } else {
      map.get(i).unwrap().0
    }
  }
  code
}
