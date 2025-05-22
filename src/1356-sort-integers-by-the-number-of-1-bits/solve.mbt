///|
fn count_ones(n : Int) -> Int {
  let mut res = 0
  let mut n = n
  while n != 0 {
    n = n & (n - 1)
    res = res + 1
  }
  res
}

///|
fn compare(a : Int, b : Int) -> Int {
  let ones_diff = count_ones(a) - count_ones(b)
  if ones_diff == 0 {
    a - b
  } else {
    ones_diff
  }
}

///|
fn sort_by_bits(arr : Array[Int]) -> Array[Int] {
  fn quick_sort(arr : Array[Int], low : Int, high : Int) {
    if low < high {
      let pi = partition(arr, low, high)
      quick_sort(arr, low, pi - 1)
      quick_sort(arr, pi + 1, high)
    }
  }

  fn partition(arr : Array[Int], low : Int, high : Int) -> Int {
    let pivot = arr[high]
    let mut i = low - 1
    for j = low; j < high; j = j + 1 {
      if compare(arr[j], pivot) < 0 {
        i = i + 1
        let temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      }
    }
    let temp = arr[i + 1]
    arr[i + 1] = arr[high]
    arr[high] = temp
    i + 1
  }

  quick_sort(arr, 0, arr.length() - 1)
  arr
}
