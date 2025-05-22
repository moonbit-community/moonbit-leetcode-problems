fn smaller_numbers_than_current(nums : Array[Int]) -> Array[Int] {
  fn search(nums : Array[Int], x : Int) -> Int {
    let mut l = 0
    let mut r = nums.length()
    while l < r {
      let mid = (l + r) / 2
      if nums[mid] >= x {
        r = mid
      } else {
        l = mid + 1
      }
    }
    l
  }

  fn sort(arr : Array[Int]) -> Array[Int] {
    fn quick_sort(arr : Array[Int], low : Int, high : Int) {
      if low < high {
        let pivot_index = partition(arr, low, high)
        quick_sort(arr, low, pivot_index - 1)
        quick_sort(arr, pivot_index + 1, high)
      }
    }

    fn partition(arr : Array[Int], low : Int, high : Int) -> Int {
      let pivot = arr[high]
      let mut i = low - 1
      for j = low; j < high; j = j + 1 {
        if arr[j] < pivot {
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

    let sorted_array = Array::make(nums.length(), 0)
    for i = 0; i < nums.length(); i = i + 1 {
      sorted_array[i] = nums[i]
    }
    quick_sort(sorted_array, 0, sorted_array.length() - 1)
    sorted_array
  }

  let arr = sort(nums)
  let result = Array::make(nums.length(), 0)
  for i = 0; i < nums.length(); i = i + 1 {
    result[i] = search(arr, nums[i])
  }
  result
}
