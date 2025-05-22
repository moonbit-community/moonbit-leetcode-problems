fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max_boxes_in_warehouse(boxes : Array[Int], warehouse : Array[Int]) -> Int {
  let n = warehouse.length()
  let left : Array[Int] = Array::make(n, 0)
  left[0] = warehouse[0]
  for i = 1; i < n; i = i + 1 {
    left[i] = min(left[i - 1], warehouse[i])
  }
  boxes.sort()
  let mut i = 0
  let mut j = n - 1
  while i < boxes.length() {
    while j >= 0 && left[j] < boxes[i] {
      j = j - 1
    }
    if j < 0 {
      break
    }
    i = i + 1
    j = j - 1
  }
  i
}
