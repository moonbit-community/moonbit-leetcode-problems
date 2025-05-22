///|
fn max_turbulence_size(arr : Array[Int]) -> Int {
  let mut ans = 1
  let mut f = 1
  let mut g = 1
  let mut i = 1
  while i < arr.length() {
    let ff = if arr[i - 1] < arr[i] { g + 1 } else { 1 }
    let gg = if arr[i - 1] > arr[i] { f + 1 } else { 1 }
    f = ff
    g = gg
    ans = max(ans, max(f, g))
    i = i + 1
  }
  ans
}

///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}
