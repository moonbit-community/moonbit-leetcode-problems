///|
fn prefixes_div_by5(nums : Array[Int]) -> Array[Bool] {
  let mut ans : @immut/list.T[Bool] = @immut/list.of([])
  let mut x = 0
  let len = nums.length()
  let mut i = 0
  while i < len {
    let v = nums[i]
    x = (x.lsl(1) | v) % 5
    ans = ans.concat(@immut/list.of([x == 0]))
    i = i + 1
  }
  ans.to_array()
}
