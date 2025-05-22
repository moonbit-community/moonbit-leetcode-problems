///|
fn dec(bucket : Array[Int], index : Int) -> Unit {
  bucket[index] = bucket[index] - 1
}

///|
fn wiggle_sort(nums : Array[Int]) -> Unit {
  let bucket : Array[Int] = Array::make(5001, 0)
  let n = nums.length()
  let mut j = 5000
  let mut i = 0
  while i < n {
    bucket[nums[i]] = bucket[nums[i]] + 1
    i = i + 1
  }
  i = 1
  while i < n {
    while bucket[j] == 0 {
      j = j - 1
    }
    nums[i] = j
    dec(bucket, j)
    i = i + 2
  }
  i = 0
  while i < n {
    while bucket[j] == 0 {
      j = j - 1
    }
    nums[i] = j
    dec(bucket, j)
    i = i + 2
  }
}
