///|
test "example 1" {
  let intervals : Array[Interval] = [
    Interval::{ start: 1, end: 3 },
    Interval::{ start: 6, end: 9 },
  ]
  let new_interval : Interval = Interval::{ start: 2, end: 5 }
  let merged_intervals : Array[Interval] = insert(intervals, new_interval)
  let expected : Array[Interval] = [
    Interval::{ start: 1, end: 5 },
    Interval::{ start: 6, end: 9 },
  ]
  assert_eq(merged_intervals, expected)
}

///|
test "example 2" {
  let intervals : Array[Interval] = [
    Interval::{ start: 1, end: 2 },
    Interval::{ start: 3, end: 5 },
    Interval::{ start: 6, end: 7 },
    Interval::{ start: 8, end: 10 },
    Interval::{ start: 12, end: 16 },
  ]
  let new_interval : Interval = Interval::{ start: 4, end: 8 }
  let merged_intervals : Array[Interval] = insert(intervals, new_interval)
  let expected : Array[Interval] = [
    Interval::{ start: 1, end: 2 },
    Interval::{ start: 3, end: 10 },
    Interval::{ start: 12, end: 16 },
  ]
  assert_eq(merged_intervals, expected)
}
