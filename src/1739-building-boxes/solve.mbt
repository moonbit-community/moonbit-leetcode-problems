///|
fn min_boxes_touching_floor(n : Int) -> Int {
  let mut h = 0
  let mut total_boxes = 0
  while total_boxes + (h + 1) * (h + 2) / 2 <= n {
    h += 1
    total_boxes += h * (h + 1) / 2
  }
  let mut remaining_boxes = n - total_boxes
  let mut floor_boxes = h * (h + 1) / 2
  let mut layer = 1
  while remaining_boxes > 0 {
    floor_boxes += 1
    remaining_boxes -= layer
    layer += 1
  }
  floor_boxes
}
