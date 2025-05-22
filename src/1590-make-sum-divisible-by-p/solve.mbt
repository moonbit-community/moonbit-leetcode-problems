///|
fn min_subarray(nums : Array[Int], p : Int) -> Int {
  let mut k = 0
  nums.each(fn(x) { k = (k + x) % p })
  if k == 0 {
    return 0
  }
  let last : @hashmap.T[Int, Int] = @hashmap.new()
  last.set(0, -1)
  let n = nums.length()
  let mut ans = n
  let mut cur = 0
  for i = 0; i < n; i = i + 1 {
    cur = (cur + nums[i]) % p
    let target = (cur - k + p) % p
    match last.get(target) {
      Some(j) => ans = min(ans, i - j)
      None => ()
    }
    last.set(cur, i)
  }
  if ans == n {
    -1
  } else {
    ans
  }
}

///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
