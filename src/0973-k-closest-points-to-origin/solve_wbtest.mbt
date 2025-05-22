test "example 1" {
  let points = [Point::{ x: 1, y: 3 }, Point::{ x: -2, y: 2 }]
  let expected = [Point::{ x: -2, y: 2 }, Point::{ x: 1, y: 3 }]
  assert_eq!(k_closest(points, 1), [expected[0]])
}

test "example 2" {
  let points = [
    Point::{ x: 3, y: 3 },
    Point::{ x: 5, y: -1 },
    Point::{ x: -2, y: 4 },
  ]
  let expected = [
    Point::{ x: 3, y: 3 },
    Point::{ x: -2, y: 4 },
    Point::{ x: 5, y: -1 },
  ]
  assert_eq!(k_closest(points, 2), [expected[0], expected[1]])
}
