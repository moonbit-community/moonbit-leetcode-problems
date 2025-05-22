struct OrderedStream {
  mut ptr : Int
  vals : Array[String]
}

fn OrderedStream::new(n : Int) -> OrderedStream {
  OrderedStream::{ ptr: 0, vals: Array::make(n, "") }
}

fn OrderedStream::insert(
  self : OrderedStream,
  id_key : Int,
  value : String
) -> Array[String] {
  self.vals[id_key - 1] = value
  let res : Array[String] = []
  while self.vals[self.ptr] != "" {
    res.push(self.vals[self.ptr])
    self.ptr = self.ptr + 1
  }
  res
}
