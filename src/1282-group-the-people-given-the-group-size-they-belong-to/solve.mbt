fn group_the_people(group_sizes : Array[Int]) -> Array[Array[Int]] {
  let mut res = @immut/list.T::of([])
  let map : @hashmap.T[Int, @immut/list.T[Int]] = @hashmap.new()
  let n = group_sizes.length()
  for i = 0; i < n; i = i + 1 {
    let size = group_sizes[i]
    let current_list = match map.get(size) {
      Some(lst) => lst
      None => @immut/list.T::of([])
    }
    map.set(size, current_list.concat(@immut/list.T::of([i])))
    let updated_list = map.get(size).unwrap()
    if updated_list.length() == size {
      res = res.concat(@immut/list.T::of([updated_list.to_array()]))
      map.set(size, @immut/list.T::of([]))
    }
  }
  res.to_array()
}
