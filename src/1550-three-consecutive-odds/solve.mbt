fn three_consecutive_odds(arr : Array[Int]) -> Bool {
  let mut cnt = 0
  for i = 0; i < arr.length(); i = i + 1 {
    let v = arr[i]
    if v.land(1) == 1 {
      cnt = cnt + 1
    } else {
      cnt = 0
    }
    if cnt == 3 {
      return true
    }
  }
  false
}
