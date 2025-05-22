fn tictactoe(moves : Array[(Int, Int)]) -> String {
  let n = moves.length()
  let cnt = Array::make(8, 0)
  let mut k = n - 1
  while k >= 0 {
    let (i, j) = moves[k]
    cnt[i] = cnt[i] + 1
    cnt[j + 3] = cnt[j + 3] + 1
    if i == j {
      cnt[6] = cnt[6] + 1
    }
    if i + j == 2 {
      cnt[7] = cnt[7] + 1
    }
    if cnt[i] == 3 || cnt[j + 3] == 3 || cnt[6] == 3 || cnt[7] == 3 {
      match k % 2 {
        0 => return "A"
        _ => return "B"
      }
    }
    k = k - 2
  }
  match n {
    9 => "Draw"
    _ => "Pending"
  }
}
