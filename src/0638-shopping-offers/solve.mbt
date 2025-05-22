///|
fn total(price : Array[Int], needs : Array[Int]) -> Int {
  let mut sum = 0
  let n = price.length()
  let mut i = 0
  while i < n {
    sum = sum + price[i] * needs[i]
    i = i + 1
  }
  sum
}

///|
fn shoppingOffers(
  price : Array[Int],
  special : Array[Array[Int]],
  needs : Array[Int]
) -> Int {
  let mut ans = total(price, needs)
  let t : Array[Int] = Array::make(needs.length(), 0)
  let n = special.length()
  let m = needs.length()
  let mut i = 0
  while i < n {
    let offer = special[i]
    let mut valid = true
    for j = 0; j < m; j = j + 1 {
      if offer[j] > needs[j] {
        valid = false
        break
      }
      t[j] = needs[j] - offer[j]
    }
    if valid {
      let offerPrice = offer[m] // Last element in offer is the price
      ans = if ans < offerPrice + shoppingOffers(price, special, t) {
        ans
      } else {
        offerPrice + shoppingOffers(price, special, t)
      }
    }
    i = i + 1
  }
  ans
}
