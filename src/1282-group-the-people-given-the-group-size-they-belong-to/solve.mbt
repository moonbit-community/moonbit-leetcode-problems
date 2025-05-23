///|
fn group_the_people(group_sizes : Array[Int]) -> Array[Array[Int]] {
  let mut res = @immut/list.of([])
  let map : @hashmap.T[Int, @immut/list.T[Int]] = @hashmap.new()
  let n = group_sizes.length()
  for i = 0; i < n; i = i + 1 {
    let size = group_sizes[i]
    let current_list = match map.get(size) {
      Some(lst) => lst
      None => @immut/list.of([])
    }
    map.set(size, current_list.concat(@immut/list.of([i])))
    let updated_list = map.get(size).unwrap()
    if updated_list.length() == size {
      res = res.concat(@immut/list.of([updated_list.to_array()]))
      map.set(size, @immut/list.of([]))
    }
  }
  res.to_array()
}
