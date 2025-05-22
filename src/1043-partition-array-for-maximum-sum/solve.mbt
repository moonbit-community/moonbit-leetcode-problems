///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn max_sum_after_partitioning(arr : Array[Int], k : Int) -> Int {
  let n = arr.length()
  let f = Array::make(n + 1, 0)
  for i = 1; i <= n; i = i + 1 {
    let mut mx = 0
    let mut j = i
    while j > max(0, i - k) {
      mx = max(mx, arr[j - 1])
      f[i] = max(f[i], f[j - 1] + mx * (i - j + 1))
      j = j - 1
    }
  }
  f[n]
}
