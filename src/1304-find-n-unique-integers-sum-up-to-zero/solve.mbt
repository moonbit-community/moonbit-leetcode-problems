///|
fn fill_zeroes(arr : Array[Int], n : Int) -> Array[Int] {
  for i = 0; i < n; i = i + 1 {
    arr[i] = 0
  }
  arr
}

///|
fn sum_zero(n : Int) -> Array[Int] {
  let ans : Array[Int] = Array::make(n, 0)
  let ans_filled = fill_zeroes(ans, n)
  let mut i = 1
  let mut j = 0
  while i <= n / 2 {
    ans_filled[j] = i
    j = j + 1
    ans_filled[j] = -i
    j = j + 1
    i = i + 1
  }
  ans_filled
}
