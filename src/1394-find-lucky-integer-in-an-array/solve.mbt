fn find_lucky(arr : Array[Int]) -> Int {
  let cnt = Array::make(510, 0)
  for i = 0; i < arr.length(); i = i + 1 {
    let x = arr[i]
    cnt[x] = cnt[x] + 1
  }
  let mut ans = -1
  for x = 1; x < cnt.length(); x = x + 1 {
    if cnt[x] == x {
      ans = x
    }
  }
  ans
}
