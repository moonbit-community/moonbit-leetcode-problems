///|
fn f(s : String) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  for i = 0; i < s.length(); i = i + 1 {
    cnt[s[i].to_int() - 'a'.to_int()] = cnt[s[i].to_int() - 'a'.to_int()] + 1
  }
  for i = 0; i < 26; i = i + 1 {
    if cnt[i] > 0 {
      return cnt[i]
    }
  }
  return 0
}

///|
fn bin_search(nums : Array[Int], x : Int) -> Int {
  let mut l = 0
  let mut r = nums.length()
  while l < r {
    let mid = (l + r) / 2
    if nums[mid] > x {
      r = mid
    } else {
      l = mid + 1
    }
  }
  nums.length() - l
}

///|
fn num_smaller_by_frequency(
  queries : @immut/list.T[String],
  words : @immut/list.T[String]
) -> @immut/list.T[Int] {
  let nums = words.map(f)
  nums.to_array().sort_by(fn(a, b) { a - b })
  queries.map(fn(q) {
    let x = f(q)
    bin_search(nums.to_array(), x)
  })
}
