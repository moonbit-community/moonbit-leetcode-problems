///|
fn fill(arr : Array[Int], value : Int) -> Unit {
  let n = arr.length()
  let mut i = 0
  while i < n {
    arr[i] = value
    i = i + 1
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn longest_mountain(arr : Array[Int]) -> Int {
  let n = arr.length()
  let f : Array[Int] = Array::make(n, 0)
  let g : Array[Int] = Array::make(n, 0)
  fill(f, 1)
  fill(g, 1)
  let mut i = 1
  while i < n {
    if arr[i] > arr[i - 1] {
      f[i] = f[i - 1] + 1
    }
    i = i + 1
  }
  let mut ans = 0
  i = n - 2
  while i >= 0 {
    if arr[i] > arr[i + 1] {
      g[i] = g[i + 1] + 1
      if f[i] > 1 {
        ans = max(ans, f[i] + g[i] - 1)
      }
    }
    i = i - 1
  }
  ans
}
