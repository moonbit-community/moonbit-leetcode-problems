fn max(nums : Array[Int]) -> Int {
  let mut max_value = nums[0]
  for i = 0; i < nums.length(); i = i + 1 {
    let num = nums[i]
    if num > max_value {
      max_value = num
    }
  }
  max_value
}

fn ceil(dividend : Int, divisor : Int) -> Int {
  if dividend % divisor == 0 {
    return dividend / divisor
  } else {
    return dividend / divisor + 1
  }
}

fn smallest_divisor(nums : Array[Int], threshold : Int) -> Int {
  let mut l = 1
  let r = max(nums)
  let mut r = r
  while l < r {
    let mid = (l + r) / 2
    let mut s = 0
    for i = 0; i < nums.length(); i = i + 1 {
      let x = nums[i]
      s = s + ceil(x, mid)
    }
    if s <= threshold {
      r = mid
    } else {
      l = mid + 1
    }
  }
  l
}
