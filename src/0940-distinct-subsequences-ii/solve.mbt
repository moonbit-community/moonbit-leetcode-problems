// Definition for constants

///|
let mod_val : Int = 1000000007

///|
fn sum(arr : Array[Int]) -> Int {
  let mut x : Int = 0
  let mut i : Int = 0
  while i < arr.length() {
    x = (x + arr[i]) % mod_val
    i = i + 1
  }
  x
}

///|
fn distinct_subseq_ii(s : String) -> Int {
  let dp : Array[Int] = Array::make(26, 0)
  let mut i : Int = 0
  while i < s.length() {
    let j : Int = s[i].to_int() - 'a'.to_int()
    dp[j] = sum(dp) + 1
    i = i + 1
  }
  sum(dp)
}
