struct Set {
  mut elems : Array[Int]
}

fn set_new(size : Int) -> Set {
  Set::{ elems: Array::make(size, -1) }
}

fn set_add(set : Set, value : Int) -> Bool {
  for i = 0; i < set.elems.length(); i = i + 1 {
    if set.elems[i] == -1 {
      set.elems[i] = value
      return true
    } else if set.elems[i] == value {
      return false
    }
  }
  false
}

fn repeated_n_times(nums : Array[Int]) -> Int {
  let set = set_new(nums.length() / 2 + 1)
  let mut i = 0
  while true {
    if not(set_add(set, nums[i])) {
      return nums[i]
    }
    i = i + 1
  }
  0 // unreachable, but necessary to compile
}
