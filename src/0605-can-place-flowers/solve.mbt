///|
fn can_place_flowers(flowerbed : Array[Int], n : Int) -> Bool {
  let m : Int = flowerbed.length()
  let mut n = n
  let mut i : Int = 0
  while i < m {
    let l : Int = if i == 0 { 0 } else { flowerbed[i - 1] }
    let r : Int = if i == m - 1 { 0 } else { flowerbed[i + 1] }
    if l + flowerbed[i] + r == 0 {
      flowerbed[i] = 1
      n = n - 1
    }
    i = i + 1
  }
  n <= 0
}
