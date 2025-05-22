fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

fn count_triplets(nums : Array[Int]) -> Int {
  let mut mx = 0
  let n = nums.length()
  let mut i = 0
  while i < n {
    mx = max(mx, nums[i])
    i = i + 1
  }
  let cnt : Array[Int] = Array::make(mx + 1, 0)
  i = 0
  while i < n {
    let mut j = 0
    while j < n {
      cnt[nums[i].land(nums[j])] = cnt[nums[i].land(nums[j])] + 1
      j = j + 1
    }
    i = i + 1
  }
  let mut ans = 0
  i = 0
  while i <= mx {
    let mut j = 0
    while j < n {
      if i.land(nums[j]) == 0 {
        ans = ans + cnt[i]
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
