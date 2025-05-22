///|
fn valid_mountain_array(arr : Array[Int]) -> Bool {
  let n = arr.length()
  if n < 3 {
    return false
  }
  let mut l = 0
  let mut r = n - 1
  while l + 1 < n - 1 && arr[l] < arr[l + 1] {
    l = l + 1
  }
  while r - 1 > 0 && arr[r] < arr[r - 1] {
    r = r - 1
  }
  l == r
}
