///|
fn max_happy_groups(batch_size : Int, groups : Array[Int]) -> Int {
  let n = groups.length()
  let count = Array::make(batch_size, 0)
  for i = 0; i < n; i = i + 1 {
    count[groups[i] % batch_size] += 1
  }
  let mut result = count[0]
  for i = 1; i <= batch_size / 2; i = i + 1 {
    let j = batch_size - i
    if i == j {
      result += count[i] / 2
    } else {
      result += @math.minimum(count[i], count[j])
    }
  }
  let remaining = Array::make(batch_size, 0)
  for i = 1; i < batch_size; i = i + 1 {
    remaining[i] = count[i]
  }
  result += backtrack(batch_size, remaining, 0)
  result
}

///|
fn backtrack(
  batch_size : Int,
  remaining : Array[Int],
  current_remainder : Int
) -> Int {
  let mut max_happy = 0
  for i = 1; i < batch_size; i = i + 1 {
    if remaining[i] > 0 {
      remaining[i] -= 1
      let new_remainder = (current_remainder + i) % batch_size
      let mut happy = backtrack(batch_size, remaining, new_remainder)
      if new_remainder == 0 {
        happy += 1
      }
      max_happy = @math.maximum(max_happy, happy)
      remaining[i] += 1
    }
  }
  max_happy
}
