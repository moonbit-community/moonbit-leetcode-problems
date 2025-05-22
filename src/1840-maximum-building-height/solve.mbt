struct Restriction {
  id : Int
  mut max_height : Int
}

fn max_building(n : Int, restrictions : Array[Restriction]) -> Int {
  let restrictions = restrictions
  restrictions.push(Restriction::{ id: 1, max_height: 0 })
  restrictions.sort_by(fn(a, b) { a.id - b.id })
  if restrictions[restrictions.length() - 1].id != n {
    restrictions.push(Restriction::{ id: n, max_height: n - 1 })
  }
  let len = restrictions.length()
  for i = 1; i < len; i = i + 1 {
    let prev = restrictions[i - 1]
    let curr = restrictions[i]
    let possible_height = prev.max_height + (curr.id - prev.id)
    if possible_height < curr.max_height {
      restrictions[i].max_height = possible_height
    }
  }
  for i = len - 2; i >= 0; i = i - 1 {
    let next = restrictions[i + 1]
    let curr = restrictions[i]
    let possible_height = next.max_height + (next.id - curr.id)
    if possible_height < curr.max_height {
      restrictions[i].max_height = possible_height
    }
  }
  let mut max_height = 0
  for i = 1; i < len; i = i + 1 {
    let prev = restrictions[i - 1]
    let curr = restrictions[i]
    let height_diff = curr.id - prev.id
    let max_possible_height = (prev.max_height + curr.max_height + height_diff) /
      2
    if max_possible_height > max_height {
      max_height = max_possible_height
    }
  }
  max_height
}
