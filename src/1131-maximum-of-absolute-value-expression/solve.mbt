///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn max_abs_val_expr(arr1 : Array[Int], arr2 : Array[Int]) -> Int {
  let dirs : Array[Int] = [1, -1, -1, 1, 1]
  let inf = @int.max_value
  let mut ans = -inf
  for k = 0; k < 4; k = k + 1 {
    let a = dirs[k]
    let b = dirs[k + 1]
    let mut mx = -inf
    let mut mi = inf
    for i = 0; i < arr1.length(); i = i + 1 {
      let x = arr1[i]
      let y = arr2[i]
      mx = max(mx, a * x + b * y + i)
      mi = min(mi, a * x + b * y + i)
      ans = max(ans, mx - mi)
    }
  }
  ans
}
