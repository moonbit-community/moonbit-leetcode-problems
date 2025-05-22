struct Pair {
  first : String
  second : String
}

fn set_contains(s : @immut/list.T[Pair], elem : Pair) -> Bool {
  match s {
    Nil => false
    Cons(head, tail) =>
      if head.first == elem.first && head.second == elem.second {
        true
      } else {
        set_contains(tail, elem)
      }
  }
}

fn are_sentences_similar(
  sentence1 : Array[String],
  sentence2 : Array[String],
  similarPairs : @immut/list.T[Pair]
) -> Bool {
  if sentence1.length() != sentence2.length() {
    return false
  }
  let mut i = 0
  while i < sentence1.length() {
    let a = sentence1[i]
    let b = sentence2[i]
    if not(a == b) && not(
      set_contains(similarPairs, Pair::{ first: a, second: b }),
    ) && not(set_contains(similarPairs, Pair::{ first: b, second: a })) {
      return false
    }
    i = i + 1
  }
  true
}
