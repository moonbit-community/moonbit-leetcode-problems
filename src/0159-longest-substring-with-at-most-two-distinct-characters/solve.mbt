///|
struct CharCount {
  mut counts : @immut/list.T[(Char, Int)]
}

///|
fn CharCount::increment(self : CharCount, c : Char) -> Unit {
  match self.counts {
    Nil => self.counts = Cons((c, 1), Nil)
    Cons(head, tail) => {
      let (ch, count) = head
      if ch == c {
        self.counts = Cons((ch, count + 1), tail)
      } else {
        let new_tail = CharCount::{ counts: tail }
        new_tail.increment(c)
        self.counts = Cons(head, new_tail.counts)
      }
    }
  }
}

///|
fn CharCount::decrement(self : CharCount, c : Char) -> Unit {
  match self.counts {
    Nil => ()
    Cons((ch, count), tail) =>
      if ch == c {
        if count - 1 == 0 {
          self.counts = tail
        } else {
          self.counts = Cons((ch, count - 1), tail)
        }
      } else {
        let new_tail = CharCount::{ counts: tail }
        new_tail.decrement(c)
        self.counts = Cons((ch, count), new_tail.counts)
      }
  }
}

///|
fn CharCount::size(self : CharCount) -> Int {
  match self.counts {
    Nil => 0
    Cons(_, tail) => {
      let tail_count = CharCount::{ counts: tail }
      1 + tail_count.size()
    }
  }
}

///|
fn length_of_longest_substring_two_distinct(s : String) -> Int {
  let count_map = CharCount::{ counts: Nil }
  let mut ans = 0
  let mut i = 0
  let mut j = 0
  while i < s.length() {
    let c = s[i]
    count_map.increment(c)
    while count_map.size() > 2 {
      let t = s[j]
      j = j + 1
      count_map.decrement(t)
    }
    ans = max(ans, i - j + 1)
    i = i + 1
  }
  ans
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
