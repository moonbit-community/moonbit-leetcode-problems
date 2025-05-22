///|
struct RLEIterator {
  encoding : Array[Int]
  mut i : Int
  mut j : Int
}

///|
fn RLEIterator::new(encoding : Array[Int]) -> RLEIterator {
  RLEIterator::{ encoding, i: 0, j: 0 }
}

///|
fn RLEIterator::next(self : RLEIterator, n : Int) -> Int {
  let mut n = n
  while self.i < self.encoding.length() {
    if self.encoding[self.i] - self.j < n {
      n = n - (self.encoding[self.i] - self.j)
      self.i = self.i + 2
      self.j = 0
    } else {
      self.j = self.j + n
      return self.encoding[self.i + 1]
    }
  }
  -1
}
