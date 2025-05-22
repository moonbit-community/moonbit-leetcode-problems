fn get_winner(arr : Array[Int], k : Int) -> Int {
  let mut mx = arr[0]
  let mut cnt = 0
  let arr_len = arr.length()
  for i = 1; i < arr_len; i = i + 1 {
    let x = arr[i]
    if mx < x {
      mx = x
      cnt = 1
    } else {
      cnt = cnt + 1
    }
    if cnt == k {
      break
    }
  }
  mx
}
