struct Trie {
  children : Array[Trie?]
  mut v : Int?
} derive(Eq)

fn Trie::new() -> Trie {
  { children: Array::make(26, None), v: None }
}

fn Trie::insert(self : Trie, w : String, idx : Int) -> Unit {
  let mut node = self
  let mut i = 0
  while i < w.length() {
    let c = w.get(i).to_int() - 'a'.to_int()
    if node.children[c] == None {
      node.children[c] = Some(Trie::new())
    }
    node = match node.children[c] {
      Some(child) => child
      None => abort("Should never happen as we just set it if None")
    }
    i = i + 1
  }
  node.v = Some(idx)
}

fn Trie::search(self : Trie, w : String, i : Int, j : Int) -> Int? {
  let mut node = self
  let mut k = j
  while k >= i {
    let idx = w.get(k).to_int() - 'a'.to_int()
    match node.children[idx] {
      Some(child) => node = child
      None => return None
    }
    k = k - 1
  }
  node.v
}

fn isPalindrome(w : String, start : Int, end : Int) -> Bool {
  let mut i = start
  let mut j = end
  while i < j {
    if w.get(i) != w.get(j) {
      return false
    }
    i = i + 1
    j = j - 1
  }
  true
}

fn palindrome_pairs(words : Array[String]) -> @immut/list.T[@immut/list.T[Int]] {
  let trie = Trie::new()
  let n = words.length()
  let mut i = 0
  while i < n {
    trie.insert(words[i], i)
    i = i + 1
  }
  let mut ans : @immut/list.T[@immut/list.T[Int]] = @immut/list.T::Nil
  i = 0
  while i < n {
    let w = words[i]
    let m = w.length()
    let mut j = 0
    while j <= m {
      if isPalindrome(w, j, m - 1) {
        match trie.search(w, 0, j - 1) {
          Some(k) =>
            if k != i {
              ans = @immut/list.T::Cons(@immut/list.T::of([i, k]), ans)
            }
          None => ()
        }
      }
      if j != 0 && isPalindrome(w, 0, j - 1) {
        match trie.search(w, j, m - 1) {
          Some(k) =>
            if k != i {
              ans = @immut/list.T::Cons(@immut/list.T::of([k, i]), ans)
            }
          None => ()
        }
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
