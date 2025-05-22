fn max_number_of_consecutive_values_you_can_make(coins : Array[Int]) -> Int {
  // Sort the coins array
  coins.sort()
  let mut max_value = 0
  for i = 0; i < coins.length(); i = i + 1 {
    if coins[i] > max_value + 1 {
      break
    }
    max_value = max_value + coins[i]
  }
  max_value + 1
}

// Test cases
