fn update_range(arr : Array[Int], l : Int, r : Int, c : Int) -> Unit {
  arr[l] = arr[l] + c
  if r + 1 < arr.length() {
    arr[r + 1] = arr[r + 1] - c
  }
}

fn apply_updates(arr : Array[Int], updates : Array[Array[Int]]) -> Unit {
  let mut i = 0
  while i < updates.length() {
    let update = updates[i]
    update_range(arr, update[0], update[1], update[2])
    i = i + 1
  }
}

fn cumulative_sum(arr : Array[Int]) -> Unit {
  let mut i = 1
  while i < arr.length() {
    arr[i] = arr[i] + arr[i - 1]
    i = i + 1
  }
}

fn get_modified_array(length : Int, updates : Array[Array[Int]]) -> Array[Int] {
  let result : Array[Int] = Array::make(length, 0)
  apply_updates(result, updates)
  cumulative_sum(result)
  result
}
