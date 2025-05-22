///|
fn bubble_sort(arr : Array[Int]) -> Array[Int] {
  let mut n = arr.length()
  let mut swapped = true
  while swapped {
    swapped = false
    let mut i = 1
    while i < n {
      if arr[i - 1] > arr[i] {
        let tmp = arr[i]
        arr[i] = arr[i - 1]
        arr[i - 1] = tmp
        swapped = true
      }
      i = i + 1
    }
    n = n - 1
  }
  arr
}

///|
fn contains_duplicate(nums : Array[Int]) -> Bool {
  let sorted_nums = bubble_sort(nums) // Sort the array
  let n = sorted_nums.length()
  let mut i = 1
  while i < n {
    if sorted_nums[i - 1] == sorted_nums[i] {
      return true // Found a duplicate
    }
    i = i + 1
  }
  false // No duplicates found
}
