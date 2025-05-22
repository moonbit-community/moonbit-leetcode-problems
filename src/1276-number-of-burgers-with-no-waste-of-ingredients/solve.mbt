///|
fn num_of_burgers(tomato_slices : Int, cheese_slices : Int) -> Array[Int] {
  let k = 4 * cheese_slices - tomato_slices
  let y = k / 2
  let x = cheese_slices - y
  if k % 2 != 0 || y < 0 || x < 0 {
    []
  } else {
    [x, y]
  }
}
