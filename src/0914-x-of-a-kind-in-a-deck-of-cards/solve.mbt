///|
fn gcd(a : Int, b : Int) -> Int {
  if b == 0 {
    a
  } else {
    gcd(b, a % b)
  }
}

///|
fn has_groups_size_x(deck : Array[Int]) -> Bool {
  let cnt : Array[Int] = Array::make(10000, 0)
  let mut i = 0
  while i < deck.length() {
    let v = deck[i]
    cnt[v] = cnt[v] + 1
    i = i + 1
  }
  let mut g = -1
  for v = 0; v < cnt.length(); v = v + 1 {
    if cnt[v] > 0 {
      g = if g == -1 { cnt[v] } else { gcd(g, cnt[v]) }
    }
  }
  g >= 2
}
