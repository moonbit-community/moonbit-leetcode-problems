///|
test "example 1" {
  let master = GridMaster::{
    can_move: fn(dir) {
      if dir == 'U' {
        false
      } else if dir == 'D' {
        true
      } else if dir == 'L' {
        true
      } else if dir == 'R' {
        false
      } else {
        false
      }
    },
    move: fn(dir) { if dir == 'L' { 2 } else if dir == 'D' { 1 } else { -1 } },
    is_target: fn() { false },
  }
  assert_eq!(min_path_cost(master, 0, 1), 2)
}

///|
test "example 2" {
  let master = GridMaster::{
    can_move: fn(dir) {
      if dir == 'U' {
        true
      } else if dir == 'D' {
        true
      } else if dir == 'L' {
        true
      } else if dir == 'R' {
        true
      } else {
        false
      }
    },
    move: fn(dir) {
      if dir == 'U' {
        3
      } else if dir == 'D' {
        2
      } else if dir == 'L' {
        1
      } else if dir == 'R' {
        2
      } else {
        -1
      }
    },
    is_target: fn() { false },
  }
  assert_eq!(min_path_cost(master, 2, 0), 9)
}

///|
test "example 3" {
  let master = GridMaster::{
    can_move: fn(dir) {
      if dir == 'U' {
        false
      } else if dir == 'D' {
        false
      } else if dir == 'L' {
        false
      } else if dir == 'R' {
        false
      } else {
        false
      }
    },
    move: fn(dir) { -1 },
    is_target: fn() { false },
  }
  assert_eq!(min_path_cost(master, 0, 0), -1)
}
