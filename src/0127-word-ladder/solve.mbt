struct Queue {
  mut elems : @immut/list.T[String]
}

// Defining push operation as methods for Queue
fn Queue::push(self : Queue, elem : String) -> Unit {
  self.elems = Cons(elem, self.elems)
}

// Define the pop operation for Queue
fn Queue::pop(self : Queue) -> String {
  fn aux(
    elems : @immut/list.T[String],
    acc : @immut/list.T[String]
  ) -> (String, @immut/list.T[String]) {
    match elems {
      Cons(head, Nil) => (head, acc)
      Cons(head, tail) => aux(tail, Cons(head, acc))
      Nil => abort("Queue is empty")
    }
  }

  let (result, elems_reversed) = aux(self.elems, Nil)
  self.elems = elems_reversed
  result
}

// Calculate the size of the Queue
fn Queue::size(self : Queue) -> Int {
  loop self.elems, 0 {
    Cons(_, tail), acc => continue tail, acc + 1
    Nil, acc => acc
  }
}

// Factory function to create a Queue
fn create_queue() -> Queue {
  Queue::{ elems: Nil }
}

// Function to remove an element from a list
fn remove(list : @immut/list.T[String], elem : String) -> @immut/list.T[String] {
  match list {
    Cons(head, tail) =>
      if head == elem {
        tail
      } else {
        Cons(head, remove(tail, elem))
      }
    Nil => Nil
  }
}

// Given a begin word, an end word, and a list of valid words, find the length of the shortest transformation sequence from begin to end
fn ladder_length(
  begin_word : String,
  end_word : String,
  word_list : @immut/list.T[String]
) -> Int {
  let mut words = word_list
  let q = create_queue()
  Queue::push(q, begin_word)
  let mut ans = 1
  while Queue::size(q) != 0 {
    let layer_size = Queue::size(q)
    let mut i = 0
    while i < layer_size {
      i = i + 1
      let word = Queue::pop(q)
      if word == end_word {
        return ans
      }
      if words.contains(word) {
        words = remove(words, word)
      }
    }
    ans = ans + 1
  }
  0
}
