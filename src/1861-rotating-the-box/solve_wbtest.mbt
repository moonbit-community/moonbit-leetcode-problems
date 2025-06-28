///|
test "example_1" {
  let box = Box::{ elems: [['#', '.', '#']] }
  let expected = Box::{ elems: [['.'], ['#'], ['#']] }
  assert_eq(rotate_the_box(box), expected)
}

///|
test "example_2" {
  let box = Box::{ elems: [['#', '.', '*', '.'], ['#', '#', '*', '.']] }
  let expected = Box::{
    elems: [['#', '.'], ['#', '#'], ['*', '*'], ['.', '.']],
  }
  assert_eq(rotate_the_box(box), expected)
}

///|
test "example_3" {
  let box = Box::{
    elems: [
      ['#', '#', '*', '.', '*', '.'],
      ['#', '#', '#', '*', '.', '.'],
      ['#', '#', '#', '.', '#', '.'],
    ],
  }
  let expected = Box::{
    elems: [
      ['.', '#', '#'],
      ['.', '#', '#'],
      ['#', '#', '*'],
      ['#', '*', '.'],
      ['#', '.', '*'],
      ['#', '.', '.'],
    ],
  }
  assert_eq(rotate_the_box(box), expected)
}
