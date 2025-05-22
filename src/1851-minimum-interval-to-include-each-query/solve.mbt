struct Interval {
  start : Int
  end : Int
} derive(Eq)

fn Interval::compare(self : Interval, other : Interval) -> Int {
  return self.end - self.start - (other.end - other.start)
}

fn min_interval_to_include_each_query(
  intervals : Array[Array[Int]],
  queries : Array[Int]
) -> Array[Int] {
  // Convert intervals to Interval struct
  let interval_list = intervals.map(
    fn(interval) { Interval::{ start: interval[0], end: interval[1] } },
  )

  // Sort intervals by their start points
  interval_list.sort_by(fn(a, b) { a.start - b.start })

  // Pair queries with their original indices
  let query_pairs = queries.mapi(fn(i, q) { (q, i) })
  query_pairs.sort_by(fn(a, b) { a.0 - b.0 })

  // Min-heap to keep track of intervals by their size
  let heap : @priority_queue.T[Interval] = @priority_queue.T::new()
  let result = Array::make(queries.length(), -1)
  let mut interval_index = 0
  for i = 0; i < query_pairs.length(); i = i + 1 {
    let (query, original_index) = query_pairs[i]
    // Add all intervals that start before or at the query
    while interval_index < interval_list.length() && interval_list[interval_index].start <=
          query {
      heap.push(interval_list[interval_index])
      interval_index = interval_index + 1
    }

    // Remove intervals that end before the query
    while heap.length() > 0 && heap.peek().unwrap().end < query {
      heap.pop() |> ignore
    }

    // If there's an interval in the heap, it's the smallest interval containing the query
    match heap.peek() {
      Some(smallest_interval) =>
        result[original_index] = smallest_interval.end - smallest_interval.start +
          1
      None => ()
    }
  }
  result
}

// Test cases
