///|
struct Interval {
  start : Int
  end : Int
} derive(Eq, Show)

///|
fn insert(
  intervals : Array[Interval],
  new_interval : Interval
) -> Array[Interval] {
  let intervals_len = intervals.length()
  let new_intervals : Array[Interval] = Array::make(intervals_len + 1, Interval::{
    start: 0,
    end: 0,
  })
  let mut i = 0
  while i < intervals_len {
    new_intervals[i] = intervals[i]
    i = i + 1
  }
  new_intervals[intervals_len] = new_interval
  merge(new_intervals)
}

///|
fn merge(intervals : Array[Interval]) -> Array[Interval] {
  if intervals.length() == 0 {
    return Array::make(0, Interval::{ start: 0, end: 0 })
  }
  sort_intervals(intervals)
  let mut result : Array[Interval] = Array::make(1, intervals[0])
  let mut result_size = 1
  let intervals_len = intervals.length()
  let mut i = 1
  while i < intervals_len {
    let s = intervals[i].start
    let e = intervals[i].end
    if result[result_size - 1].end < s {
      result = array_push(result, intervals[i])
      result_size = result_size + 1
    } else if result[result_size - 1].end < e {
      result[result_size - 1] = Interval::{
        start: result[result_size - 1].start,
        end: e,
      }
    }
    i = i + 1
  }
  result
}

///|
fn sort_intervals(intervals : Array[Interval]) -> Unit {
  let interv_length = intervals.length()
  let mut i = 0
  while i < interv_length {
    let mut j = i + 1
    while j < interv_length {
      if intervals[i].start > intervals[j].start {
        let tmp = intervals[i]
        intervals[i] = intervals[j]
        intervals[j] = tmp
      }
      j = j + 1
    }
    i = i + 1
  }
}

///|
fn array_push(arr : Array[Interval], elem : Interval) -> Array[Interval] {
  let n = arr.length()
  let new_arr : Array[Interval] = Array::make(n + 1, Interval::{
    start: 0,
    end: 0,
  })
  for i = 0; i < n; i = i + 1 {
    new_arr[i] = arr[i]
  }
  new_arr[n] = elem
  new_arr
}
