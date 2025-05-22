///|
let mod_value : Int = 1000000007

///|
fn three_sum_multi(arr : Array[Int], target : Int) -> Int {
  let cnt : Array[Int] = Array::make(101, 0)
  let mut array_len : Int = 0
  while array_len < arr.length() {
    let v : Int = arr[array_len]
    cnt[v] = cnt[v] + 1
    array_len = array_len + 1
  }
  let mut ans : Int = 0
  array_len = 0
  while array_len < arr.length() {
    let b : Int = arr[array_len]
    cnt[b] = cnt[b] - 1
    let mut i : Int = 0
    while i < array_len {
      let a : Int = arr[i]
      let c : Int = target - a - b
      if c >= 0 && c <= 100 {
        ans = (ans + cnt[c]) % mod_value
      }
      i = i + 1
    }
    array_len = array_len + 1
  }
  ans
}
