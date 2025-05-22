///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn largest_multiple_of_three(digits : Array[Int]) -> String {
  digits.sort()
  let n = digits.length()
  let f = Array::make(n + 1, Array::make(3, -@int.min_value))
  f[0][0] = 0
  for i = 1; i <= n; i = i + 1 {
    for j = 0; j < 3; j = j + 1 {
      let k = (j - digits[i - 1] % 3 + 3) % 3
      f[i][j] = max(f[i - 1][j], f[i - 1][k] + 1)
    }
  }
  if f[n][0] <= 0 {
    ""
  } else {
    let arr : Array[Int] = []
    let mut j = 0
    for i = n; i != 0; i = i - 1 {
      let k = (j - digits[i - 1] % 3 + 3) % 3
      if f[i - 1][k] + 1 == f[i][j] {
        arr.push(digits[i - 1])
        j = k
      }
    }
    let i = 0
    let mut res = ""
    for j = i; j < arr.length(); j = j + 1 {
      res = res + arr[j].to_string()
    }
    res
  }
}
