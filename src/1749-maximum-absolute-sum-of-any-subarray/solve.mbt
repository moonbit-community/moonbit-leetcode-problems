///|
fn max_absolute_sum(nums : Array[Int]) -> Int {
  let mut max_sum = 0
  let mut min_sum = 0
  let mut max_abs_sum = 0
  for i = 0; i < nums.length(); i = i + 1 {
    max_sum = @math.maximum(nums[i], max_sum + nums[i])
    min_sum = @math.minimum(nums[i], min_sum + nums[i])
    max_abs_sum = @math.maximum(
      max_abs_sum,
      @math.maximum(max_sum.abs(), min_sum.abs()),
    )
  }
  max_abs_sum
}
