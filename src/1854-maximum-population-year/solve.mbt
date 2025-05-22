fn maximum_population(logs : Array[(Int, Int)]) -> Int {
  let population_changes : @hashmap.T[Int, Int] = @hashmap.new()
  let mut min_year = 2050
  let mut max_year = 1950

  // Step 1: Populate the population changes map and find the range of years
  for i = 0; i < logs.length(); i = i + 1 {
    let birth = logs[i].0
    let death = logs[i].1
    population_changes.set(
      birth,
      population_changes.get_or_default(birth, 0) + 1,
    )
    population_changes.set(
      death,
      population_changes.get_or_default(death, 0) - 1,
    )
    if birth < min_year {
      min_year = birth
    }
    if death > max_year {
      max_year = death
    }
  }

  // Step 2: Determine the maximum population year
  let mut current_population = 0
  let mut max_population = 0
  let mut max_population_year = min_year
  for year = min_year; year <= max_year; year = year + 1 {
    current_population += population_changes.get_or_default(year, 0)
    if current_population > max_population {
      max_population = current_population
      max_population_year = year
    }
  }
  max_population_year
}

// Test cases
