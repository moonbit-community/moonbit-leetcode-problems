fn closest_room(
  rooms : Array[(Int, Int)],
  queries : Array[(Int, Int)]
) -> Array[Int] {
  let sorted_rooms : Array[(Int, Int)] = rooms
  sorted_rooms.sort_by_key(fn { (_, size) => size })
  fn find_closest_room(
    preferred : Int,
    min_size : Int,
    rooms : Array[(Int, Int)]
  ) -> Int {
    let mut closest_room = -1
    let mut min_diff = 2_0000_0000 // A large number to represent infinity
    for i = 0; i < rooms.length(); i = i + 1 {
      let (room_id, size) = rooms[i]
      if size >= min_size {
        let diff = (room_id - preferred).abs()
        if diff < min_diff || (diff == min_diff && room_id < closest_room) {
          closest_room = room_id
          min_diff = diff
        }
      }
    }
    closest_room
  }

  let answer : Array[Int] = []
  for i = 0; i < queries.length(); i = i + 1 {
    let (preferred, min_size) = queries[i]
    let closest = find_closest_room(preferred, min_size, sorted_rooms)
    answer.push(closest)
  }
  answer
}
