fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn count_elements(arr : Array[Int]) -> Int {
  let mut mx = 0
  arr.each(fn(x) { mx = max(mx, x) })
  let cnt = Array::make(mx + 1, 0)
  for i = 0; i < arr.length(); i = i + 1 {
    let x = arr[i]
    cnt[x] = cnt[x] + 1
  }
  let mut ans = 0
  for i = 0; i < mx; i = i + 1 {
    if cnt[i + 1] > 0 {
      ans = ans + cnt[i]
    }
  }
  ans
}
