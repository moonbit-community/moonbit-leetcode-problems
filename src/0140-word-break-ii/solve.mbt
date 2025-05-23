///|
priv struct Trie {
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
fn Trie::word_break(self : Trie, s : String) -> Array[Array[String]] {
  if s.length() == 0 {
    return [[]]
  }
  let res = []
  let mut i = 1
  while i <= s.length() {
    let check = self.search(slice(s, 0, i))
    if check {
      let suffixes = self.word_break(slice(s, i, s.length()))
      let addition = slice(s, 0, i)
      for suffix in suffixes {
        suffix.push(addition)
      }
      res.append(suffixes)
    }
    i = i + 1
  }
  res
}

///|
pub fn word_break(s : String, wordDict : Array[String]) -> Array[String] {
  let t = Trie::new()
  for w in wordDict {
    t.insert(w)
  }
  t.word_break(s).map(fn(ss) { ss.rev_iter().join(" ") })
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
