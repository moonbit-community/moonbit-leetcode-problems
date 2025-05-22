fn sum_array(values : Array[Int]) -> Int {
  // Helper function to calculate the sum of an array
  let mut result = 0
  for i = 0; i < values.length(); i = i + 1 {
    result = result + values[i]
  }
  result
}

fn max(a : Int, b : Int) -> Int {
  // Helper function to find the maximum of two numbers
  if a > b {
    a
  } else {
    b
  }
}

fn maximum_wealth(accounts : Array[Array[Int]]) -> Int {
  // Main function to find the maximum wealth
  let mut max_wealth = 0
  for i = 0; i < accounts.length(); i = i + 1 {
    let current_sum = sum_array(accounts[i])
    max_wealth = max(max_wealth, current_sum)
  }
  max_wealth
}
