///|
fn sort_array(arr : Array[Int]) -> Array[Int] {
  let len = arr.length()
  for i = 0; i < len - 1; i = i + 1 {
    for j = 0; j < len - i - 1; j = j + 1 {
      if arr[j] > arr[j + 1] {
        let temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      }
    }
  }
  arr
}

///|
fn can_be_equal(target : Array[Int], arr : Array[Int]) -> Bool {
  let sorted_target = sort_array(target)
  let sorted_arr = sort_array(arr)
  let n = arr.length()
  for i = 0; i < n; i = i + 1 {
    if sorted_target[i] != sorted_arr[i] {
      return false
    }
  }
  true
}
