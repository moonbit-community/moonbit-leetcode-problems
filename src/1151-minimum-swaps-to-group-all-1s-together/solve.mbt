///|
fn[T] slice(array : Array[T], start : Int, end : Int) -> Array[T] {
  if end < start + 1 {
    []
  } else {
    let return_array = Array::make(end - start, array[start])
    for i = 0; i < end - start; i = i + 1 {
      return_array[i] = array[start + i]
    }
    return_array
  }
}

///|
fn min_swaps(data : Array[Int]) -> Int {
  fn sum(arr : Array[Int]) -> Int {
    let mut acc = 0
    for i = 0; i < arr.length(); i = i + 1 {
      acc = acc + arr[i]
    }
    acc
  }

  let k = sum(data)
  let mut t = sum(slice(data, 0, k))
  let mut mx = t
  let n = data.length()
  for i = k; i < n; i = i + 1 {
    t = t + data[i] - data[i - k]
    mx = if mx > t { mx } else { t }
  }
  k - mx
}
