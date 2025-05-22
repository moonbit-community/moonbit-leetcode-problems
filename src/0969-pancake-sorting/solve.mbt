fn reverse(arr : Array[Int], j : Int) -> @immut/list.T[Int] {
  let mut i = 0
  let mut j = j
  while i < j {
    let t = arr[i]
    arr[i] = arr[j]
    arr[j] = t
    i = i + 1
    j = j - 1
  }
  @immut/list.T::from_array(arr)
}

fn pancake_sort(arr : Array[Int]) -> Array[Int] {
  let mut list = @immut/list.T::from_array(arr)
  let n = arr.length()
  let mut ans = @immut/list.T::of([])
  let mut i = n - 1
  while i > 0 {
    let mut j = i
    while j > 0 && list.nth_exn(j) != i + 1 {
      j = j - 1
    }
    if j < i {
      if j > 0 {
        ans = ans.concat(@immut/list.T::of([j + 1]))
        list = reverse(list.to_array(), j)
      }
      ans = ans.concat(@immut/list.T::of([i + 1]))
      list = reverse(list.to_array(), i)
    }
    i = i - 1
  }
  ans.to_array()
}
