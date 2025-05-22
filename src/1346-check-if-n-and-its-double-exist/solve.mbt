fn check_if_exist(arr : Array[Int]) -> Bool {
  let mut s : @immut/list.T[Int] = @immut/list.T::of([])
  for i = 0; i < arr.length(); i = i + 1 {
    let v = arr[i]
    if s.contains(v * 2) || s.contains(v / 2) {
      return true
    }
    s = @immut/list.T::Cons(v, s)
  }
  false
}
