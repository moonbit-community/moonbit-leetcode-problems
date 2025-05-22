///|
fn sum(arr : Array[Int]) -> Int {
  let mut result = 0
  for i = 0; i < arr.length(); i = i + 1 {
    let val = arr[i]
    result = result + val
  }
  result
}

///|
fn maximize_sweetness(sweetness : Array[Int], k : Int) -> Int {
  let mut l = 0
  let mut r = sum(sweetness)
  fn check(x : Int, sweetness : Array[Int], k : Int) -> Bool {
    let mut s = 0
    let mut cnt = 0
    for i = 0; i < sweetness.length(); i = i + 1 {
      let v = sweetness[i]
      s = s + v
      if s >= x {
        s = 0
        cnt = cnt + 1
      }
    }
    cnt > k
  }

  while l < r {
    let mid = (l + r + 1) / 2
    if check(mid, sweetness, k) {
      l = mid
    } else {
      r = mid - 1
    }
  }
  l
}
