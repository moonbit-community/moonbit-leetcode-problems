fn max_score_from_removing_stones(a : Int, b : Int, c : Int) -> Int {
  let piles = [a, b, c]
  let mut score = 0
  while piles[0] > 0 && piles[1] > 0 {
    // Sort the piles to ensure the two largest piles are at the end
    piles.sort()
    // Remove one stone from each of the two largest piles
    piles[1] -= 1
    piles[2] -= 1
    // Increment the score
    score += 1
  }
  score
}
