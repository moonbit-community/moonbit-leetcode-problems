struct MapEntry {
  key : Int
  value : Int
}

fn map_get_default(
  map : @immut/list.T[MapEntry],
  key : Int,
  default : Int
) -> Int {
  match map {
    Nil => default
    Cons(head, tail) =>
      if head.key == key {
        head.value
      } else {
        map_get_default(tail, key, default)
      }
  }
}

fn map_merge(
  map : @immut/list.T[MapEntry],
  key : Int,
  value : Int
) -> @immut/list.T[MapEntry] {
  match map {
    Nil => Cons(MapEntry::{ key, value }, Nil)
    Cons(head, tail) =>
      if head.key == key {
        Cons(MapEntry::{ key, value: head.value + value }, tail)
      } else {
        Cons(head, map_merge(tail, key, value))
      }
  }
}

fn number_of_arithmetic_slices(nums : Array[Int]) -> Int {
  let n : Int = nums.length()
  let f : Array[@immut/list.T[MapEntry]] = Array::make(n, Nil)
  let mut ans : Int = 0
  let mut i : Int = 0
  while i < n {
    let mut j : Int = 0
    while j < i {
      let d : Int = nums[i] - nums[j]
      let cnt : Int = map_get_default(f[j], d, 0)
      ans = ans + cnt
      f[i] = map_merge(f[i], d, cnt + 1)
      j = j + 1
    }
    i = i + 1
  }
  ans
}
