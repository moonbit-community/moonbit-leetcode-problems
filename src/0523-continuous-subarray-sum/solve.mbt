struct Pair {
  index : Int
  value : Int
}

// Since MoonBit does not directly support maps, we simulate it with a list of Pair structs.
fn add_pair(
  pairs : @immut/list.T[Pair],
  key : Int,
  val : Int
) -> @immut/list.T[Pair] {
  Cons(Pair::{ index: key, value: val }, pairs)
}

fn get_pair(pairs : @immut/list.T[Pair], key : Int) -> Int? {
  match pairs {
    Nil => None
    Cons(pair, rest) =>
      if pair.index == key {
        Some(pair.value)
      } else {
        get_pair(rest, key)
      }
  }
}

fn contains_key(pairs : @immut/list.T[Pair], key : Int) -> Bool {
  match get_pair(pairs, key) {
    None => false
    Some(_) => true
  }
}

fn sum_mod_k(nums : Array[Int], k : Int) -> Bool {
  let mut mp : @immut/list.T[Pair] = Nil
  mp = add_pair(mp, 0, -1)
  let mut s = 0
  let mut i = 0
  while i < nums.length() {
    s = s + nums[i]
    let r = s % k
    match get_pair(mp, r) {
      Some(index) => if i - index >= 2 { return true }
      None => mp = add_pair(mp, r, i)
    }
    i = i + 1
  }
  false
}
