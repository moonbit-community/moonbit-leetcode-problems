fn maximum_product(nums : Array[Int]) -> Int {
  let inf : Int = @int.max_value
  let mut mi1 = inf
  let mut mi2 = inf
  let mut mx1 = -inf
  let mut mx2 = -inf
  let mut mx3 = -inf
  let mut i = 0
  while i < nums.length() {
    let x = nums[i]
    if x < mi1 {
      mi2 = mi1
      mi1 = x
    } else if x < mi2 {
      mi2 = x
    }
    if x > mx1 {
      mx3 = mx2
      mx2 = mx1
      mx1 = x
    } else if x > mx2 {
      mx3 = mx2
      mx2 = x
    } else if x > mx3 {
      mx3 = x
    }
    i = i + 1
  }
  let product1 = mi1 * mi2 * mx1
  let product2 = mx1 * mx2 * mx3
  if product1 > product2 {
    product1
  } else {
    product2
  }
}
