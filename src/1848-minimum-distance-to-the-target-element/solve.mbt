///|
fn min_distance_to_target(nums : Array[Int], target : Int, start : Int) -> Int {
  let mut min_distance = @int.max_value // Initialize with a large number
  for i = 0; i < nums.length(); i = i + 1 {
    if nums[i] == target {
      let distance = abs(i - start)
      if distance < min_distance {
        min_distance = distance
      }
    }
  }
  min_distance
}

///|
fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}
