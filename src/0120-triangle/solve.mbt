fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn minimum_total(triangle : Array[Array[Int]]) -> Int {
  let triangle_mut = triangle // Assuming we can mutate it directly for simplicity
  let mut i = triangle_mut.length() - 2
  while i >= 0 {
    let mut j = 0
    while j <= i {
      triangle_mut[i][j] = triangle_mut[i][j] + min(
          triangle_mut[i + 1][j],
          triangle_mut[i + 1][j + 1],
        )
      j = j + 1
    }
    i = i - 1
  }
  triangle_mut[0][0]
}
