struct Person {
  height : Int
  k : Int
} derive(Eq, Show)

fn insert_at_index(
  people : @immut/list.T[Person],
  index : Int,
  person : Person
) -> @immut/list.T[Person] {
  match people {
    Nil => Cons(person, Nil)
    Cons(head, tail) =>
      if index == 0 {
        Cons(person, people)
      } else {
        Cons(head, insert_at_index(tail, index - 1, person))
      }
  }
}

fn sort_people(people : Array[Person]) -> Array[Person] {
  let n : Int = people.length()
  let mut i = 0
  while i < n {
    let mut j = i + 1
    while j < n {
      if people[i].height < people[j].height || (people[i].height == people[j].height &&
      people[i].k > people[j].k) {
        let tmp = people[i]
        people[i] = people[j]
        people[j] = tmp
      }
      j = j + 1
    }
    i = i + 1
  }
  people
}

fn reconstruct_queue(people : Array[Person]) -> @immut/list.T[Person] {
  let sorted_people = sort_people(people)
  let mut ans : @immut/list.T[Person] = Nil
  let mut i = 0
  while i < sorted_people.length() {
    ans = insert_at_index(ans, sorted_people[i].k, sorted_people[i])
    i = i + 1
  }
  ans
}
