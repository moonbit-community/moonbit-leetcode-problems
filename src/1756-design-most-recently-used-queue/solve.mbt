///|
struct MRUQueue {
  queue : Array[Int]
}

///|
fn MRUQueue::new(n : Int) -> MRUQueue {
  let queue = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    queue[i] = i + 1
  }
  MRUQueue::{ queue, }
}

///|
fn MRUQueue::fetch(self : MRUQueue, k : Int) -> Int {
  let index = k - 1
  let element = self.queue[index]
  self.queue.remove(index) |> ignore
  self.queue.push(element)
  element
}
