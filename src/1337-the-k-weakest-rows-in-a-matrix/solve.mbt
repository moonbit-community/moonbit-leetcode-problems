///|
fn sum_array(arr : Array[Int]) -> Int {
  let mut sum = 0
  let len = arr.length()
  for i = 0; i < len; i = i + 1 {
    sum = sum + arr[i]
  }
  sum
}

///|
fn k_weakest_rows(mat : Array[Array[Int]], k : Int) -> Array[Int] {
  let n = mat.length()
  let sum_map : Array[(Int, Int)] = Array::make(n, (0, 0))
  for i = 0; i < n; i = i + 1 {
    sum_map[i] = (sum_array(mat[i]), i)
  }

  // Perform bubble sort on the first k elements
  for i = 0; i < k; i = i + 1 {
    for j = i; j < n; j = j + 1 {
      let condition1 = sum_map[j].0 < sum_map[i].0
      let condition2 = sum_map[j].0 == sum_map[i].0 &&
        sum_map[i].1 > sum_map[j].1
      if condition1 || condition2 {
        let temp = sum_map[i]
        sum_map[i] = sum_map[j]
        sum_map[j] = temp
      }
    }
  }
  let ans : Array[Int] = Array::make(k, 0)
  for i = 0; i < k; i = i + 1 {
    ans[i] = sum_map[i].1
  }
  ans
}
