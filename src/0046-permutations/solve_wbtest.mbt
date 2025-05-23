///|
fn permute1(nums : Array[Int]) -> @immut/sorted_set.T[@immut/sorted_set.T[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in permute(nums) {
    res = res.add(@immut/sorted_set.from_iter(i.iter()))
  }
  res
}

///|
test "example 1" {
  inspect!(
    permute1([1, 2, 3]),
    content="@immut/sorted_set.of([@immut/sorted_set.of([1, 2]), @immut/sorted_set.of([1, 2, 3]), @immut/sorted_set.of([1, 3]), @immut/sorted_set.of([2, 3])])",
  )
}

///|
test "example 2" {
  inspect!(permute1([0, 1]), content="@immut/sorted_set.of([@immut/sorted_set.of([0, 1])])")
}

///|
test "example 3" {
  inspect!(permute1([1]), content="@immut/sorted_set.of([@immut/sorted_set.of([1])])")
}
