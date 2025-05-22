///|
fn minimum_abs_difference(arr : Array[Int]) -> Array[Array[Int]] {
  let sorted_arr = arr
  sorted_arr.sort()
  let n = sorted_arr.length()
  let big_value = @int.max_value
  let mut mi = big_value
  for i = 0; i < n - 1; i = i + 1 {
    mi = @math.minimum(mi, sorted_arr[i + 1] - sorted_arr[i])
  }
  let ans : Array[Array[Int]] = [] // Initialize empty 2D array with size 0
  for i = 0; i < n - 1; i = i + 1 {
    if sorted_arr[i + 1] - sorted_arr[i] == mi {
      let pair = [sorted_arr[i], sorted_arr[i + 1]]
      ans.push(pair)
    }
  }
  ans
}
