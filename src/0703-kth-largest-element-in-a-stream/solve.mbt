///|
struct KthLargest {
  q : @immut/list.T[Int]
  size : Int
}

///|
fn KthLargest::new(k : Int, nums : Array[Int]) -> KthLargest {
  let mut obj = KthLargest::{ q: Nil, size: k }
  let n = nums.length()
  let mut i = 0
  while i < n {
    obj = obj.add(nums[i])
    i = i + 1
  }
  obj
}

///|
fn KthLargest::add(self : KthLargest, val : Int) -> KthLargest {
  let mut q = self.insert_sorted(self.q, val)
  while self.len(q) > self.size {
    q = self.pop(q)
  }
  KthLargest::{ q, size: self.size }
}

///|
fn KthLargest::peek(self : KthLargest) -> Int {
  match self.q {
    Cons(head, _) => head
    Nil => abort("Queue is empty")
  }
}

///|
fn KthLargest::insert_sorted(
  self : KthLargest,
  list : @immut/list.T[Int],
  val : Int
) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(val, Nil)
    Cons(head, tail) =>
      if val < head {
        Cons(val, list)
      } else {
        Cons(head, self.insert_sorted(tail, val))
      }
  }
}

///|
fn KthLargest::pop(
  self : KthLargest,
  list : @immut/list.T[Int]
) -> @immut/list.T[Int] {
  match list {
    Nil => Nil
    Cons(_, tail) => tail
  }
}

///|
fn KthLargest::len(self : KthLargest, list : @immut/list.T[Int]) -> Int {
  match list {
    Nil => 0
    Cons(_, tail) => 1 + self.len(tail)
  }
}
