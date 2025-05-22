fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn total_fruit(fruits : Array[Int]) -> Int {
  let cnt : @hashmap.T[Int, Int] = @hashmap.new()
  let mut ans = 0
  let mut i = 0
  let mut j = 0
  while i < fruits.length() {
    let x = fruits[i]
    cnt.set(x, cnt.get(x).or(0) + 1)
    while cnt.size() > 2 {
      let y = fruits[j]
      j = j + 1
      cnt.set(y, cnt.get(y).or(0) - 1)
      if cnt.get(y).or(0) == 0 {
        cnt.remove(y)
      }
    }
    ans = max(ans, i - j + 1)
    i = i + 1
  }
  ans
}
