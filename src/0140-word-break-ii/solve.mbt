///|
struct Trie {
  children : Array[Trie?]
  mut is_end : Bool
}

///|
fn Trie::new() -> Trie {
  Trie::{ children: Array::make(26, None), is_end: false }
}

///|
fn Trie::insert(self : Trie, word : String) -> Unit {
  let mut node = self
  for i = 0; i < word.length(); i = i + 1 {
    let c = word[i].to_int() - 'a'.to_int()
    match node.children[c] {
      None => node.children[c] = Some(Trie::new())
      _ => ()
    }
    node = node.children[c].unwrap()
  }
  node.is_end = true
}

///|
fn Trie::search(self : Trie, word : String) -> Bool {
  let mut node = self
  for i = 0; i < word.length(); i = i + 1 {
    let c = word[i].to_int() - 'a'.to_int()
    match node.children[c] {
      None => return false
      Some(child) => node = child
    }
  }
  node.is_end
}

///|
fn dfs(trie : Trie, s : String) -> @immut/list.T[@immut/list.T[String]] {
  if s.length() == 0 {
    return Cons(Cons("", Nil), Nil)
  }
  let mut res : @immut/list.T[@immut/list.T[String]] = Nil
  let mut i = 1
  while i <= s.length() {
    let check = trie.search(slice(s, 0, i))
    if check {
      let suffixes = dfs(trie, slice(s, i, s.length()))
      fn prepend(
        val : String,
        lists : @immut/list.T[@immut/list.T[String]]
      ) -> @immut/list.T[@immut/list.T[String]] {
        match lists {
          @immut/list.T::Nil => Nil
          Cons(list, rest) => Cons(Cons(val, list), prepend(val, rest))
        }
      }

      res = res.concat(prepend(slice(s, 0, i), suffixes))
    }
    i = i + 1
  }
  res
}

///|
fn slice(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  let mut i = start
  while i < end {
    result = result + s[i].to_string()
    i = i + 1
  }
  result
}

///|
fn list_to_string(
  lists : @immut/list.T[@immut/list.T[String]]
) -> @immut/list.T[String] {
  match lists {
    @immut/list.T::Nil => Nil
    @immut/list.T::Cons(list, rest) =>
      @immut/list.T::Cons(join(list, " "), list_to_string(rest))
  }
}

///|
fn join(list : @immut/list.T[String], sep : String) -> String {
  match list {
    Nil => ""
    Cons(head, Nil) => head
    Cons(head, tail) => head + sep + join(tail, sep)
  }
}
