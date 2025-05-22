///|
struct Vector2D {
  mut i : Int
  mut j : Int
  vec : Array[Array[Int]]
}

///|
fn Vector2D::new(vec : Array[Array[Int]]) -> Vector2D {
  Vector2D::{ i: 0, j: 0, vec }
}

///|
fn Vector2D::next(self : Vector2D) -> Int {
  Vector2D::forward(self)
  let val = self.vec[self.i][self.j]
  self.j = self.j + 1
  val
}

///|
fn Vector2D::hasNext(self : Vector2D) -> Bool {
  Vector2D::forward(self)
  self.i < self.vec.length()
}

///|
fn Vector2D::forward(self : Vector2D) -> Unit {
  while self.i < self.vec.length() && self.j >= self.vec[self.i].length() {
    self.i = self.i + 1
    self.j = 0
  }
}
