enum Tree[Int] {
  Empty
  Node(Tree[Int], Int, Tree[Int])
}

fn append(a : Array[Int], x : Int) -> Array[Int] {
  let new_arr = Array::make(a.length() + 1, 0)
  let mut i = 0
  while i < a.length() {
    new_arr[i] = a[i]
    i = i + 1
  }
  new_arr[i] = x
  new_arr
}

fn inorder(t : Tree[Int]) -> Array[Int] {
  fn go(t : Tree[Int], acc : Array[Int]) -> Array[Int] {
    match t {
      Empty => acc
      Node(l, x, r) => {
        let acc1 = go(l, acc)
        let acc2 = append(acc1, x)
        go(r, acc2)
      }
    }
  }

  go(t, [])
}
