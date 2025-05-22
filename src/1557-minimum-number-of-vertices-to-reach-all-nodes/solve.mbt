fn find_smallest_set_of_vertices(
  n : Int,
  edges : @immut/list.T[@immut/list.T[Int]]
) -> Array[Int] {
  let cnt : Array[Int] = Array::make(n, 0)
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges.nth_exn(i)
    let t = edge.nth_exn(1)
    cnt[t] = cnt[t] + 1
  }
  let mut ans : @immut/list.T[Int] = @immut/list.T::of([])
  for i = 0; i < n; i = i + 1 {
    if cnt[i] == 0 {
      ans = ans.concat(@immut/list.T::of([i]))
    }
  }
  ans.to_array()
}
