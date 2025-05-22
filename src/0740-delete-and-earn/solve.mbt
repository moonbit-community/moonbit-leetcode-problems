fn delete_and_earn(nums : Array[Int]) -> Int {
  if nums.length() == 0 {
    return 0
  }
  let sums : Array[Int] = Array::make(10010, 0)
  let select : Array[Int] = Array::make(10010, 0)
  let nonSelect : Array[Int] = Array::make(10010, 0)
  let mut maxV = 0
  let mut i = 0
  while i < nums.length() {
    let x = nums[i]
    sums[x] = sums[x] + x
    maxV = max(maxV, x)
    i = i + 1
  }
  i = 1
  while i <= maxV {
    select[i] = nonSelect[i - 1] + sums[i]
    nonSelect[i] = max(select[i - 1], nonSelect[i - 1])
    i = i + 1
  }
  max(select[maxV], nonSelect[maxV])
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
