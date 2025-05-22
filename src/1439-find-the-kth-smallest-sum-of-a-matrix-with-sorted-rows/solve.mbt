fn merge_and_sort(
  arr_a : Array[Int],
  arr_b : Array[Int],
  max_size : Int
) -> Array[Int] {
  let mut result : Array[Int] = []
  for i = 0; i < arr_a.length(); i = i + 1 {
    let a = arr_a[i]
    for j = 0; j < arr_b.length(); j = j + 1 {
      let b = arr_b[j]
      result.push(a + b)
    }
  }
  // Implementing insertion sort for simplicity; you might want to use more efficient sorting for larger arrays.
  let mut i = 1
  while i < result.length() {
    let key = result[i]
    let mut j = i - 1
    while j >= 0 && result[j] > key {
      result[j + 1] = result[j]
      j = j - 1
    }
    result[j + 1] = key
    i = i + 1
  }
  if result.length() > max_size {
    let (left, right) = result.split_at(max_size)
    result = left
  }
  let result_arr = Array::make(result.length(), 0)
  for i = 0; i < result.length(); i = i + 1 {
    result_arr[i] = result[i]
  }
  result_arr
}

fn kth_smallest(mat : Array[Array[Int]], k : Int) -> Int {
  let mut pre : Array[Int] = [0]
  for i = 0; i < mat.length(); i = i + 1 {
    let cur = mat[i]
    // Merge current array with `pre` and keep only the first k smallest sums
    pre = merge_and_sort(pre, cur, k)
  }
  pre[k - 1]
}
