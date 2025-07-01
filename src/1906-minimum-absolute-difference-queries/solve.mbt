///|
struct Query {
  left : Int
  right : Int
}

///|
fn min_absolute_difference_queries(
  nums : Array[Int],
  queries : Array[Query]
) -> Array[Int] {
  let n = nums.length()
  let freq_map = @hashmap.new()

  // Preprocess the array to build the frequency map
  for i in 0..<n {
    let count = freq_map.get_or_default(nums[i], 0)
    freq_map.set(nums[i], count + 1)
  }
  let result = Array::make(queries.length(), 0)
  for i in 0..<queries.length() {
    let query = queries[i]
    let left = query.left
    let right = query.right
    let subarray_freq_map = @hashmap.new()
    let mut min_diff = 2_000_000_000 // A large number to start with
    let mut all_same = true

    // Build the frequency map for the subarray
    for j = left; j <= right; j = j + 1 {
      let count = subarray_freq_map.get_or_default(nums[j], 0)
      subarray_freq_map.set(nums[j], count + 1)
    }

    // Check if all elements are the same
    subarray_freq_map.each(fn(_key, value) {
      if value != right - left + 1 {
        all_same = false
      }
    })
    if all_same {
      result[i] = -1
    } else {
      // Compute the minimum absolute difference
      let keys = subarray_freq_map.iter().map(((key, _)) => key).collect()
      for j in 0..<keys.length() {
        for k = j + 1; k < keys.length(); k = k + 1 {
          let diff = (keys[j] - keys[k]).abs()
          if diff < min_diff {
            min_diff = diff
          }
        }
      }
      result[i] = min_diff
    }
  }
  result
}

// Test cases
