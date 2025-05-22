test "example 1" {
  let restrictions = [
    Restriction::{ id: 2, max_height: 1 },
    Restriction::{ id: 4, max_height: 1 },
  ]
  assert_eq!(max_building(5, restrictions), 2)
}

test "example 2" {
  let restrictions = []
  assert_eq!(max_building(6, restrictions), 5)
}

test "example 3" {
  let restrictions = [
    Restriction::{ id: 5, max_height: 3 },
    Restriction::{ id: 2, max_height: 5 },
    Restriction::{ id: 7, max_height: 4 },
    Restriction::{ id: 10, max_height: 3 },
  ]
  assert_eq!(max_building(10, restrictions), 5)
}
