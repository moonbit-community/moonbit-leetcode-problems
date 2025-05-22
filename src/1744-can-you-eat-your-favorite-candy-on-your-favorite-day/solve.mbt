///|
fn can_eat_favorite_candy_on_favorite_day(
  candies_count : Array[Int],
  queries : Array[Array[Int]]
) -> Array[Bool] {
  let n = candies_count.length()
  let prefix_sums = Array::make(n + 1, 0)

  // Calculate prefix sums
  for i = 0; i < n; i = i + 1 {
    prefix_sums[i + 1] = prefix_sums[i] + candies_count[i]
  }
  let answer = Array::make(queries.length(), false)
  for i = 0; i < queries.length(); i = i + 1 {
    let favorite_type = queries[i][0]
    let favorite_day = queries[i][1]
    let daily_cap = queries[i][2]

    // Check if we can eat the candy on the favorite day
    let can_eat = prefix_sums[favorite_type] / daily_cap <= favorite_day &&
      prefix_sums[favorite_type] + candies_count[favorite_type] > favorite_day
    answer[i] = can_eat
  }
  answer
}

// Test cases
