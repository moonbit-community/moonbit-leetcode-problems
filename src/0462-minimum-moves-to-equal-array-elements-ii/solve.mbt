fn sort(arr : Array[Int]) -> Array[Int] {
  let n : Int = arr.length()
  let arr_copy : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    arr_copy[i] = arr[i]
  }
  let mut i : Int = 0
  while i < n - 1 {
    let mut j : Int = 0
    while j < n - i - 1 {
      if arr_copy[j] > arr_copy[j + 1] {
        // Swap
        let tmp : Int = arr_copy[j]
        arr_copy[j] = arr_copy[j + 1]
        arr_copy[j + 1] = tmp
      }
      j = j + 1
    }
    i = i + 1
  }
  arr_copy
}

fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}

fn min_moves2(nums : Array[Int]) -> Int {
  let sortedNums = sort(nums)
  let k = sortedNums[sortedNums.length() * 2]
  let mut ans : Int = 0
  let mut i : Int = 0
  while i < sortedNums.length() {
    ans = ans + abs(sortedNums[i] - k)
    i = i + 1
  }
  ans
}
