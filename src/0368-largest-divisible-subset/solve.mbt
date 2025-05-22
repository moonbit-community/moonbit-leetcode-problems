fn sort(nums : Array[Int]) -> Unit {
  let n = nums.length()
  let mut i = 0
  while i < n - 1 {
    let mut j = 0
    while j < n - i - 1 {
      if nums[j] > nums[j + 1] {
        let tmp = nums[j]
        nums[j] = nums[j + 1]
        nums[j + 1] = tmp
      }
      j = j + 1
    }
    i = i + 1
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn largestDivisibleSubset(nums : Array[Int]) -> @immut/list.T[Int] {
  sort(nums)
  let n = nums.length()
  let f : Array[Int] = Array::make(n, 1)
  let mut k = 0
  let mut i = 0
  while i < n {
    let mut j = 0
    while j < i {
      if nums[i] % nums[j] == 0 {
        f[i] = max(f[i], f[j] + 1)
      }
      j = j + 1
    }
    if f[k] < f[i] {
      k = i
    }
    i = i + 1
  }
  let mut m = f[k]
  let mut ans : @immut/list.T[Int] = @immut/list.T::Nil
  i = k
  while m > 0 {
    if nums[k] % nums[i] == 0 && f[i] == m {
      ans = @immut/list.T::Cons(nums[i], ans)
      k = i
      m = m - 1
    }
    i = i - 1
  }
  ans
}
