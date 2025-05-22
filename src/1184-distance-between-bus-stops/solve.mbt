fn distance_between_bus_stops(
  distance : Array[Int],
  start : Int,
  destination : Int
) -> Int {
  let s = distance.fold_left(init=0, fn(a, b) { a + b })
  let mut a = 0
  let n = distance.length()
  let mut current_start = start
  while current_start != destination {
    a += distance[current_start]
    current_start = (current_start + 1) % n
  }
  min(a, s - a)
}

fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
