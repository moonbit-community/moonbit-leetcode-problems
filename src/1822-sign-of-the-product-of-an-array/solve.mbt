///|
fn sign_func(x : Int) -> Int {
  if x > 0 {
    1
  } else if x < 0 {
    -1
  } else {
    0
  }
}

///|
fn array_sign(nums : Array[Int]) -> Int {
  let mut product_sign = 1
  for i = 0; i < nums.length(); i = i + 1 {
    if nums[i] == 0 {
      return 0
    } else if nums[i] < 0 {
      product_sign = -product_sign
    }
  }
  product_sign
}
