///|
fn subsets_with_dup1(nums : Array[Int]) -> @immut/sorted_set.T[Array[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in subsets_with_dup(nums) {
    res = res.add(i)
  }
  res
}

///|
test "example 1" {
  inspect!(
    subsets_with_dup1([1, 2, 2]),
    content="@immut/sorted_set.of([[], [1], [2], [1, 2], [2, 2], [1, 2, 2]])",
  )
}

///|
test "example 2" {
  inspect!(subsets_with_dup1([0]), content="@immut/sorted_set.of([[], [0]])")
}
