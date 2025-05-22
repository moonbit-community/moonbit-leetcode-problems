///|
fn multiply(num1 : String, num2 : String) -> String {
  if num1 == "0" || num2 == "0" {
    return "0"
  }
  let m = num1.length()
  let n = num2.length()
  let arr : Array[Int] = Array::make(m + n, 0)
  for i = m - 1; i >= 0; i = i - 1 {
    let a = num1[i].to_int() - '0'.to_int()
    for j = n - 1; j >= 0; j = j - 1 {
      let b = num2[j].to_int() - '0'.to_int()
      arr[i + j + 1] = arr[i + j + 1] + a * b
    }
  }
  for i = arr.length() - 1; i > 0; i = i - 1 {
    arr[i - 1] = arr[i - 1] + arr[i] / 10
    arr[i] = arr[i] % 10
  }
  let mut i = if arr[0] == 0 { 1 } else { 0 }
  let mut ans = ""
  while i < arr.length() {
    ans = ans + arr[i].to_string()
    i = i + 1
  }
  ans
}
