///|
struct TournamentResult {
  earliest_round : Int
  latest_round : Int
} derive(Show)

///|
fn simulate_round(players : Array[Int]) -> Array[Int] {
  let n = players.length()
  let winners = Array::make(0, 0)
  let mut i = 0
  while i < n / 2 {
    winners.push(players[i])
    winners.push(players[n - 1 - i])
    i = i + 1
  }
  if n % 2 == 1 {
    winners.push(players[n / 2])
  }
  winners.sort()
  winners
}

///|
fn find_earliest_latest_rounds(
  n : Int,
  first_player : Int,
  second_player : Int
) -> TournamentResult {
  let mut earliest_round = n
  let mut latest_round = 1
  let stack : Array[(Array[Int], Int)] = Array::new()
  stack.push((Array::make(n, 1), 1))
  while stack.length() > 0 {
    let (current_players, current_round) = stack.pop().unwrap()
    let next_players = simulate_round(current_players)
    if next_players.contains(first_player) &&
      next_players.contains(second_player) {
      if current_round < earliest_round {
        earliest_round = current_round
      }
      if current_round > latest_round {
        latest_round = current_round
      }
    } else {
      stack.push((next_players, current_round + 1))
    }
  }
  TournamentResult::{ earliest_round, latest_round }
}
