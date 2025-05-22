///|
fn can_form_target_triplet(
  triplets : Array[Array[Int]],
  target : Array[Int]
) -> Bool {
  let filtered_triplets = Array::new()
  for i = 0; i < triplets.length(); i = i + 1 {
    let triplet = triplets[i]
    if triplet[0] <= target[0] &&
      triplet[1] <= target[1] &&
      triplet[2] <= target[2] {
      filtered_triplets.push(triplet)
    }
  }
  let can_form = [false, false, false]
  for i = 0; i < filtered_triplets.length(); i = i + 1 {
    let triplet = filtered_triplets[i]
    if triplet[0] == target[0] {
      can_form[0] = true
    }
    if triplet[1] == target[1] {
      can_form[1] = true
    }
    if triplet[2] == target[2] {
      can_form[2] = true
    }
  }
  return can_form[0] && can_form[1] && can_form[2]
}

// Test cases
