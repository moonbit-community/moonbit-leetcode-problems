///|
fn add_minimum_number_of_rungs(rungs : Array[Int], dist : Int) -> Int {
  let mut current_height = 0
  let mut additional_rungs = 0
  for i = 0; i < rungs.length(); i = i + 1 {
    let gap = rungs[i] - current_height
    if gap > dist {
      additional_rungs += (gap - 1) / dist
    }
    current_height = rungs[i]
  }
  additional_rungs
}

// Test cases
