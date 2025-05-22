///|
enum Pair {
  Pair(Int, Int)
} derive(Eq, Show)

///|
fn find_missing_ranges(
  nums : Array[Int],
  lower : Int,
  upper : Int
) -> @immut/list.T[Pair] {
  let n = nums.length()
  if n == 0 {
    return Cons(Pair(lower, upper), Nil)
  }
  let mut ans : @immut/list.T[Pair] = @immut/list.T::of([])
  if nums[0] > lower {
    ans = Cons(Pair(lower, nums[0] - 1), ans)
  }
  let mut i = 1
  while i < n {
    if nums[i] - nums[i - 1] > 1 {
      ans = Cons(Pair(nums[i - 1] + 1, nums[i] - 1), ans)
    }
    i = i + 1
  }
  if nums[n - 1] < upper {
    ans = Cons(Pair(nums[n - 1] + 1, upper), ans)
  }

  // Reverse the list since we prepended elements for efficiency
  ans.rev()
}
