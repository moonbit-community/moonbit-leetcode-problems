///|
fn combination_sum1(
  candidates : Array[Int],
  target : Int
) -> @immut/sorted_set.T[@immut/sorted_set.T[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in combination_sum(candidates, target) {
    res = res.add(@immut/sorted_set.from_array(i))
  }
  res
}

///|
test "example 1" {
  inspect!(
    combination_sum1([2, 3, 6, 7], 7),
    content="@immut/sorted_set.of([@immut/sorted_set.of([2, 3]), @immut/sorted_set.of([7])])",
  )
}

///|
test "example 2" {
  inspect!(
    combination_sum1([2, 3, 5], 8),
    content="@immut/sorted_set.of([@immut/sorted_set.of([2]), @immut/sorted_set.of([2, 3]), @immut/sorted_set.of([3, 5])])",
  )
}

///|
test "example 3" {
  inspect!(combination_sum1([2], 1), content="@immut/sorted_set.of([])")
}
