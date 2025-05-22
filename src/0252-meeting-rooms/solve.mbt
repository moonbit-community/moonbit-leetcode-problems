fn can_attend_meetings(intervals : Array[(Int, Int)]) -> Bool {
  fn sortIntervals(arr : Array[(Int, Int)]) -> Array[(Int, Int)] {
    fn partition(arr : Array[(Int, Int)], low : Int, high : Int) -> Int {
      let pivot = arr[high]
      let mut i = low - 1
      let mut j = low
      while j <= high - 1 {
        if arr[j].0 <= pivot.0 {
          i = i + 1
          let tmp = arr[i]
          arr[i] = arr[j]
          arr[j] = tmp
        }
        j = j + 1
      }
      let tmp = arr[i + 1]
      arr[i + 1] = arr[high]
      arr[high] = tmp
      return i + 1
    }

    fn quickSort(arr : Array[(Int, Int)], low : Int, high : Int) -> Unit {
      if low < high {
        let pi = partition(arr, low, high)
        quickSort(arr, low, pi - 1)
        quickSort(arr, pi + 1, high)
      }
    }

    quickSort(arr, 0, arr.length() - 1)
    return arr
  }

  let sortedIntervals = sortIntervals(intervals)
  let mut i = 1
  while i < sortedIntervals.length() {
    if sortedIntervals[i].0 < sortedIntervals[i - 1].1 {
      return false
    }
    i = i + 1
  }
  return true
}
