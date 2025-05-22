struct Box {
  elems : Array[Array[Char]]
} derive(Eq, Show)

fn simulate_gravity(box : Box) -> Box {
  let m = box.elems.length()
  let n = box.elems[0].length()
  let new_box = Box::{ elems: Array::make(m, Array::make(n, '.')) }
  for j = 0; j < n; j = j + 1 {
    let mut bottom = m - 1
    for i = m - 1; i >= 0; i = i - 1 {
      if box.elems[i][j] == '*' {
        new_box.elems[i][j] = '*'
        bottom = i - 1
      } else if box.elems[i][j] == '#' {
        new_box.elems[bottom][j] = '#'
        bottom = bottom - 1
      }
    }
  }
  new_box
}

fn rotate_box(box : Box) -> Box {
  let m = box.elems.length()
  let n = box.elems[0].length()
  let rotated_box = Box::{ elems: Array::make(n, Array::make(m, '.')) }
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      rotated_box.elems[j][m - 1 - i] = box.elems[i][j]
    }
  }
  rotated_box
}

fn rotate_the_box(box : Box) -> Box {
  let box_with_gravity = simulate_gravity(box)
  rotate_box(box_with_gravity)
}

// Test cases
