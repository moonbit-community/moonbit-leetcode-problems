fn thirdMax(nums : Array[Int]) -> Int {
  let min = -214783843
  let mut m1 : Int = min
  let mut m2 : Int = min
  let mut m3 : Int = min
  let mut num : Int = 0
  let mut i : Int = 0
  while i < nums.length() {
    num = nums[i]
    if num == m1 || num == m2 || num == m3 {
      i = i + 1
      continue
    }
    if num > m1 {
      m3 = m2
      m2 = m1
      m1 = num
    } else if num > m2 {
      m3 = m2
      m2 = num
    } else if num > m3 {
      m3 = num
    }
    i = i + 1
  }
  if m3 != min {
    m3
  } else {
    m1
  }
}
