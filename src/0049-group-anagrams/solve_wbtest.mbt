///|
fn group_anagrams1(
  strs : Array[String]
) -> @immut/sorted_set.T[@immut/sorted_set.T[String]] {
  let mut res = @immut/sorted_set.new()
  for i in group_anagrams(strs) {
    res = res.add(@immut/sorted_set.from_iter(i.iter()))
  }
  res
}

///|
test "example 1" {
  inspect!(
    group_anagrams1(["eat", "tea", "tan", "ate", "nat", "bat"]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of(["ate", "eat", "tea"]), @immut/sorted_set.of(["bat"]), @immut/sorted_set.of(["nat", "tan"])])
    ,
  )
}

///|
test "example 2" {
  inspect!(
    group_anagrams1([""]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of([""])])
    ,
  )
}

///|
test "example 3" {
  inspect!(
    group_anagrams1(["a"]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of(["a"])])
    ,
  )
}
