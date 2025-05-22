fn sort(nums : Array[Int]) -> Array[Int] {
  if nums.length() <= 1 {
    return nums
  }
  let pivot = nums[0]
  let mut less : @immut/list.T[Int] = Nil
  let mut greater : @immut/list.T[Int] = Nil
  let mut i = 1
  while i < nums.length() {
    if nums[i] <= pivot {
      less = Cons(nums[i], less)
    } else {
      greater = Cons(nums[i], greater)
    }
    i = i + 1
  }
  let sorted_less = sort(less.to_array())
  let sorted_greater = sort(greater.to_array())
  let res = @immut/list.T::from_array(sorted_less).concat(
    @immut/list.T::from_array(Array::make(1, pivot)),
  ).concat(@immut/list.T::from_array(sorted_greater))
  res.to_array()
}

fn array_pair_sum(nums : Array[Int]) -> Int {
  let sortedNums = sort(nums)
  let mut ans = 0
  let mut i = 0
  while i < sortedNums.length() {
    ans = ans + sortedNums[i]
    i = i + 2
  }
  ans
}
