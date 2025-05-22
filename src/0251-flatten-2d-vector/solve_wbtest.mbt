test "example 1" {
  let vec = [[1, 2], [3], [4]]
  let obj = Vector2D::new(vec)
  let hasNext = Vector2D::hasNext(obj)
  let next = Vector2D::next(obj)
  let next = Vector2D::next(obj)
  let next = Vector2D::next(obj)
  let hasNext = Vector2D::hasNext(obj)
  let hasNext = Vector2D::hasNext(obj)
  let next = Vector2D::next(obj)
  let hasNext = Vector2D::hasNext(obj)
  assert_eq!(next, 4)
  assert_eq!(hasNext, false)
}
