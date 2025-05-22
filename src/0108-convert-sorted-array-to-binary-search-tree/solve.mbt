///|
enum Tree[Int] {
  Empty
  Node(Tree[Int], Int, Tree[Int])
} derive(Eq, Show)

///|
fn sorted_arr_to_bst(nums : Array[Int]) -> Tree[Int] {
  fn build(
    tree : Tree[Int],
    arr : Array[Int],
    lo : Int,
    hi : Int
  ) -> Tree[Int] {
    let mut new_tree = tree
    new_tree = match tree {
      Empty =>
        if lo == hi {
          Node(Empty, arr[lo], Empty)
        } else {
          let mid = (lo + hi) / 2
          Node(
            build(tree, arr, lo, mid - 1),
            arr[mid],
            build(tree, arr, mid + 1, hi),
          )
        }
      _ => tree
    }
    new_tree
  }

  build(Empty, nums, 0, nums.length() - 1)
}
