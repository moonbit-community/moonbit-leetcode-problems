///|
fn calculate_money_in_leetcode_bank(n : Int) -> Int {
  let mut total_money = 0
  let mut day = 1
  let mut week = 1
  while day <= n {
    total_money = total_money + week
    if day % 7 == 0 {
      week = week + 1
    }
    day = day + 1
  }
  total_money
}
