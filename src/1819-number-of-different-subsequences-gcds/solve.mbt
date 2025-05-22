///|
fn gcd(a : Int, b : Int) -> Int {
  if b == 0 {
    a
  } else {
    gcd(b, a % b)
  }
}

///|
fn max_element(nums : Array[Int]) -> Int {
  let mut max_num = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if nums[i] > max_num {
      max_num = nums[i]
    }
  }
  max_num
}

///|
fn number_of_different_subsequences_gcds(nums : Array[Int]) -> Int {
  let max_num = max_element(nums)
  let gcds = @hashmap.new()
  for gcd_candidate = 1
      gcd_candidate <= max_num
      gcd_candidate = gcd_candidate + 1 {
    let mut current_gcd = 0
    for i = 0; i < nums.length(); i = i + 1 {
      if nums[i] % gcd_candidate == 0 {
        if current_gcd == 0 {
          current_gcd = nums[i]
        } else {
          current_gcd = gcd(current_gcd, nums[i])
        }
      }
    }
    if current_gcd == gcd_candidate {
      gcds.set(gcd_candidate, true)
    }
  }
  gcds.size()
}
