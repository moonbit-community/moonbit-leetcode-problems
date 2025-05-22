///|
test "example 1" {
  let people : Array[Person] = [
    Person::{ height: 7, k: 0 },
    Person::{ height: 4, k: 4 },
    Person::{ height: 7, k: 1 },
    Person::{ height: 5, k: 0 },
    Person::{ height: 6, k: 1 },
    Person::{ height: 5, k: 2 },
  ]
  let expected : @immut/list.T[Person] = @immut/list.T::of([
    Person::{ height: 5, k: 0 },
    Person::{ height: 7, k: 0 },
    Person::{ height: 5, k: 2 },
    Person::{ height: 6, k: 1 },
    Person::{ height: 4, k: 4 },
    Person::{ height: 7, k: 1 },
  ])
  assert_eq!(reconstruct_queue(people), expected)
}
