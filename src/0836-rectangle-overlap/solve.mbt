///|
fn is_rectangle_overla(rec1 : Array[Int], rec2 : Array[Int]) -> Bool {
  let x1 = rec1[0]
  let y1 = rec1[1]
  let x2 = rec1[2]
  let y2 = rec1[3]
  let x3 = rec2[0]
  let y3 = rec2[1]
  let x4 = rec2[2]
  let y4 = rec2[3]
  not(y3 >= y2 || y4 <= y1 || x3 >= x2 || x4 <= x1)
}
