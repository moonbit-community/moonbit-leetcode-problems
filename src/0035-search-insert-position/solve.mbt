fn search_insert(nums : Array[Int], target : Int) -> Int {
  let mut low = 0
  let mut high = nums.length() - 1
  while low <= high {
    let mid = (low + high) / 2
    if nums[mid] == target {
      return mid
    } else if nums[mid] < target {
      low = mid + 1
    } else {
      high = mid - 1
    }
  }
  low
}
