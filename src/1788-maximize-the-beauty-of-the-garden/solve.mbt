///|
fn maximize_beauty(flowers : Array[Int]) -> Int {
  let n = flowers.length()
  let beauty_indices : @hashmap.T[Int, Array[Int]] = @hashmap.new()
  let mut max_beauty = -2_0000_0000

  // Step 1: Populate the hashmap with indices for each beauty value
  for i = 0; i < n; i = i + 1 {
    let beauty = flowers[i]
    if not(beauty_indices.contains(beauty)) {
      beauty_indices.set(beauty, Array::new())
    }
    beauty_indices.get(beauty).unwrap().push(i)
  }

  // Step 2: For each beauty value, calculate the maximum subarray sum
  beauty_indices.each(fn(k, indices) {
    let len = indices.length()
    if len > 1 {
      for i = 0; i < len - 1; i = i + 1 {
        for j = i + 1; j < len; j = j + 1 {
          let start_idx = indices[i]
          let end_idx = indices[j]
          let mut subarray_sum = 0
          for k = start_idx; k <= end_idx; k = k + 1 {
            subarray_sum = subarray_sum + flowers[k]
          }
          if subarray_sum > max_beauty {
            max_beauty = subarray_sum
          }
        }
      }
    }
  })
  max_beauty
}

// Test cases
