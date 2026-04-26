///|
pub(all) enum T[A] {
  Nil
  Cons(A, T[A])
} derive(Eq)

///|
pub impl[A : Show] Show for T[A] with output(xs, logger) {
  logger.write_iter(xs.iter(), prefix="@immut/list.of([", suffix="])")
}

///|
#as_free_fn
pub fn[A] T::empty() -> T[A] {
  Nil
}

///|
#as_free_fn
#as_free_fn(of)
pub fn[A] T::from_array(arr : ArrayView[A]) -> T[A] {
  for i = arr.length() - 1, list = Nil; i >= 0; {
    continue i - 1, Cons(arr[i], list)
  } nobreak {
    list
  }
}

///|
pub fn[A] T::to_array(self : T[A]) -> Array[A] {
  let arr = []
  for xs = self {
    match xs {
      Nil => break
      Cons(x, rest) => {
        arr.push(x)
        continue rest
      }
    }
  }
  arr
}

///|
pub fn[A] T::iter(self : T[A]) -> Iter[A] {
  let mut next = self
  Iter::new(fn() {
    match next {
      Nil => None
      Cons(x, rest) => {
        next = rest
        Some(x)
      }
    }
  })
}

///|
pub fn[A] T::each(self : T[A], f : (A) -> Unit raise?) -> Unit raise? {
  for xs = self {
    match xs {
      Nil => break
      Cons(x, rest) => {
        f(x)
        continue rest
      }
    }
  }
}

///|
pub fn[A] T::length(self : T[A]) -> Int {
  for xs = self, len = 0 {
    match xs {
      Nil => break len
      Cons(_, rest) => continue rest, len + 1
    }
  }
}

///|
pub fn[A] T::is_empty(self : T[A]) -> Bool {
  self is Nil
}

///|
pub fn[A] T::concat(self : T[A], other : T[A]) -> T[A] {
  match self {
    Nil => other
    Cons(x, rest) => Cons(x, rest.concat(other))
  }
}

///|
pub fn[A] T::rev(self : T[A]) -> T[A] {
  for xs = self, acc = Nil {
    match xs {
      Nil => break acc
      Cons(x, rest) => continue rest, Cons(x, acc)
    }
  }
}

///|
pub fn[A] T::tail(self : T[A]) -> T[A] {
  match self {
    Nil => Nil
    Cons(_, rest) => rest
  }
}

///|
pub fn[A] T::head_exn(self : T[A]) -> A {
  match self {
    Nil => abort("head_exn on empty list")
    Cons(x, _) => x
  }
}

///|
pub fn[A] T::nth_exn(self : T[A], n : Int) -> A {
  if n < 0 {
    abort("nth_exn index out of range")
  }
  for xs = self, i = n {
    match xs {
      Nil => break abort("nth_exn index out of range")
      Cons(x, rest) => if i == 0 { break x } else { continue rest, i - 1 }
    }
  }
}

///|
pub fn[A] T::get(self : T[A], n : Int) -> A? {
  if n < 0 {
    return None
  }
  for xs = self, i = n {
    match xs {
      Nil => break None
      Cons(x, rest) => if i == 0 { break Some(x) } else { continue rest, i - 1 }
    }
  }
}

///|
pub fn[A] T::nth(self : T[A], n : Int) -> A? {
  self.get(n)
}

///|
pub fn[A] T::take(self : T[A], n : Int) -> T[A] {
  if n <= 0 {
    return Nil
  }
  for xs = self, i = n, acc = Nil {
    match (xs, i) {
      (Nil, _) | (_, 0) => break acc.rev()
      (Cons(x, rest), i) => continue rest, i - 1, Cons(x, acc)
    }
  }
}

///|
pub fn[A] T::drop(self : T[A], n : Int) -> T[A] {
  if n <= 0 {
    return self
  }
  for xs = self, i = n {
    match (xs, i) {
      (Nil, _) => break Nil
      (xs, 0) => break xs
      (Cons(_, rest), i) => continue rest, i - 1
    }
  }
}

///|
pub fn[A] T::remove_at(self : T[A], n : Int) -> T[A] {
  if n < 0 {
    return self
  }
  for xs = self, i = n, acc = Nil {
    match xs {
      Nil => break acc.rev()
      Cons(_, rest) if i == 0 => break acc.rev().concat(rest)
      Cons(x, rest) => continue rest, i - 1, Cons(x, acc)
    }
  }
}

///|
pub fn[A : Eq] T::contains(self : T[A], value : A) -> Bool {
  for xs = self {
    match xs {
      Nil => break false
      Cons(x, rest) => if x == value { break true } else { continue rest }
    }
  }
}

///|
pub fn[A, B] T::map(self : T[A], f : (A) -> B) -> T[B] {
  for xs = self, acc = Nil {
    match xs {
      Nil => break acc.rev()
      Cons(x, rest) => continue rest, Cons(f(x), acc)
    }
  }
}

///|
pub fn[A, B] T::fold_left(self : T[A], init~ : B, f : (B, A) -> B) -> B {
  for xs = self, acc = init {
    match xs {
      Nil => break acc
      Cons(x, rest) => continue rest, f(acc, x)
    }
  }
}

///|
pub fn[A : Compare] T::sort(self : T[A]) -> T[A] {
  let arr = self.to_array()
  arr.sort()
  T::from_array(arr)
}
