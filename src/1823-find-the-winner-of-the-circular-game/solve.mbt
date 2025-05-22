///|
fn find_winner_of_circular_game(n : Int, k : Int) -> Int {
  let mut friends = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    friends[i] = i + 1
  }
  let mut current_index = 0
  while friends.length() > 1 {
    current_index = (current_index + k - 1) % friends.length()
    let new_friends = Array::make(friends.length() - 1, 0)
    for i = 0; i < new_friends.length(); i = i + 1 {
      if i < current_index {
        new_friends[i] = friends[i]
      } else if i >= current_index {
        new_friends[i] = friends[i + 1]
      }
    }
    friends = new_friends
  }
  friends[0]
}
