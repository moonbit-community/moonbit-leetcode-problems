///|
struct BinaryIndexedTree {
  n : Int
  c : Array[Int]
}

///|
fn BinaryIndexedTree::new(n : Int) -> BinaryIndexedTree {
  BinaryIndexedTree::{ n, c: Array::make(n + 1, 0) }
}

///|
fn BinaryIndexedTree::update(
  self : BinaryIndexedTree,
  x : Int,
  v : Int
) -> Unit {
  let mut x = x
  while x <= self.n {
    self.c[x] = self.c[x] + v
    x = x + (x & -x)
  }
}

///|
fn BinaryIndexedTree::query(self : BinaryIndexedTree, x : Int) -> Int {
  let mut s = 0
  let mut x = x
  while x > 0 {
    s = s + self.c[x]
    x = x - (x & -x)
  }
  s
}

///|
fn create_sorted_array(instructions : Array[Int]) -> Int {
  fn max(arr : Array[Int]) -> Int {
    let mut m = arr[0]
    for i = 0; i < arr.length(); i = i + 1 {
      let x = arr[i]
      if x > m {
        m = x
      }
    }
    m
  }

  fn min(a : Int, b : Int) -> Int {
    if a < b {
      a
    } else {
      b
    }
  }

  let m = max(instructions)
  let tree = BinaryIndexedTree::new(m)
  let mod_val = 1000000007
  let mut ans = 0
  for i = 0; i < instructions.length(); i = i + 1 {
    let x = instructions[i]
    let cost = min(tree.query(x - 1), i - tree.query(x))
    ans = (ans + cost) % mod_val
    tree.update(x, 1)
  }
  ans
}
