///|
fn fill(array : Array[Int], value : Int, n : Int) -> Unit {
  let mut i = 0
  while i < n {
    array[i] = value
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
fn candy(ratings : Array[Int]) -> Int {
  let n = ratings.length()
  let left : Array[Int] = Array::make(n, 1)
  let right : Array[Int] = Array::make(n, 1)
  fill(left, 1, n)
  fill(right, 1, n)
  let mut i = 1
  while i < n {
    if ratings[i] > ratings[i - 1] {
      left[i] = left[i - 1] + 1
    }
    i = i + 1
  }
  let mut i = n - 2
  while i >= 0 {
    if ratings[i] > ratings[i + 1] {
      right[i] = right[i + 1] + 1
    }
    i = i - 1
  }
  let mut ans = 0
  let mut i = 0
  while i < n {
    ans = ans + max(left[i], right[i])
    i = i + 1
  }
  ans
}
