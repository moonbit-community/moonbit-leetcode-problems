///|
struct FrontMiddleBackQueue {
  mut q1 : @deque.T[Int]
  mut q2 : @deque.T[Int]
}

///|
fn FrontMiddleBackQueue::new() -> FrontMiddleBackQueue {
  FrontMiddleBackQueue::{ q1: @deque.new(), q2: @deque.new() }
}

///|
fn FrontMiddleBackQueue::push_front(
  self : FrontMiddleBackQueue,
  val : Int
) -> Unit {
  self.q1.push_front(val)
  self.rebalance()
}

///|
fn FrontMiddleBackQueue::push_middle(
  self : FrontMiddleBackQueue,
  val : Int
) -> Unit {
  self.q1.push_back(val)
  self.rebalance()
}

///|
fn FrontMiddleBackQueue::push_back(
  self : FrontMiddleBackQueue,
  val : Int
) -> Unit {
  self.q2.push_back(val)
  self.rebalance()
}

///|
fn FrontMiddleBackQueue::pop_front(self : FrontMiddleBackQueue) -> Int {
  if self.q1.is_empty() && self.q2.is_empty() {
    return -1
  }
  let val = if self.q1.is_empty() {
    self.q2.pop_front()
  } else {
    self.q1.pop_front()
  }
  self.rebalance()
  val.unwrap()
}

///|
fn FrontMiddleBackQueue::pop_middle(self : FrontMiddleBackQueue) -> Int {
  if self.q1.is_empty() && self.q2.is_empty() {
    return -1
  }
  let val = if self.q1.capacity() == self.q2.capacity() {
    self.q1.pop_back()
  } else {
    self.q2.pop_front()
  }
  self.rebalance()
  val.unwrap()
}

///|
fn FrontMiddleBackQueue::pop_back(self : FrontMiddleBackQueue) -> Int {
  if self.q2.is_empty() {
    return -1
  }
  let val = self.q2.pop_back()
  self.rebalance()
  val.unwrap()
}

///|
fn FrontMiddleBackQueue::rebalance(self : FrontMiddleBackQueue) -> Unit {
  if self.q1.capacity() > self.q2.capacity() {
    let val = self.q1.pop_back()
    self.q2.push_front(val.unwrap())
  }
  if self.q2.capacity() > self.q1.capacity() + 1 {
    let val = self.q2.pop_front()
    self.q1.push_back(val.unwrap())
  }
}
