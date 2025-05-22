///|
fn add_negabinary(arr1 : Array[Int], arr2 : Array[Int]) -> Array[Int] {
  let mut i = arr1.length() - 1
  let mut j = arr2.length() - 1
  let ans : Array[Int] = Array::new()
  let mut c = 0
  while i >= 0 || j >= 0 || c != 0 {
    let a = if i < 0 { 0 } else { arr1[i] }
    let b = if j < 0 { 0 } else { arr2[j] }
    let mut x = a + b + c
    c = 0
    if x >= 2 {
      x -= 2
      c -= 1
    } else if x == -1 {
      x = 1
      c += 1
    }
    ans.push(x)
    i = i - 1
    j = j - 1
  }
  while ans.length() > 1 && ans[ans.length() - 1] == 0 {
    ans.pop() |> ignore
  }
  ans.rev_inplace()
  ans
}
