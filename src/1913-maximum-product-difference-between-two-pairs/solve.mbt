fn maximum_product_difference(nums : Array[Int]) -> Int {
  // Sort the array
  let sorted_nums = sort(nums)

  // Get the length of the array
  let n = sorted_nums.length()

  // Calculate the product of the two largest numbers
  let max_product = sorted_nums[n - 1] * sorted_nums[n - 2]

  // Calculate the product of the two smallest numbers
  let min_product = sorted_nums[0] * sorted_nums[1]

  // Return the product difference
  max_product - min_product
}

// Helper function to sort an array
fn sort(arr : Array[Int]) -> Array[Int] {
  // Implementing a simple sorting algorithm (e.g., bubble sort) for demonstration
  let n = arr.length()
  for i = 0; i < n - 1; i = i + 1 {
    for j = 0; j < n - i - 1; j = j + 1 {
      if arr[j] > arr[j + 1] {
        let temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      }
    }
  }
  arr
}

// Test cases
