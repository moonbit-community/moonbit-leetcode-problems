///|
fn closest_dessert_cost(
  base_costs : Array[Int],
  topping_costs : Array[Int],
  target : Int
) -> Int {
  let closest_cost = 2_0000_0000 // A large number to start with
  let closest_diff = 2_0000_0000 // A large number to start with
  fn dfs(
    topping_costs : Array[Int],
    index : Int,
    current_cost : Int,
    target : Int,
    closest_cost : Ref[Int],
    closest_diff : Ref[Int]
  ) {
    if index == topping_costs.length() {
      let diff = (current_cost - target).abs()
      if diff < closest_diff.val {
        closest_diff.val = diff
        closest_cost.val = current_cost
      } else if diff == closest_diff.val && current_cost < closest_cost.val {
        closest_cost.val = current_cost
      }
      return
    }
    for i = 0; i <= 2; i = i + 1 {
      dfs(
        topping_costs,
        index + 1,
        current_cost + i * topping_costs[index],
        target,
        closest_cost,
        closest_diff,
      )
    }
  }

  for i = 0; i < base_costs.length(); i = i + 1 {
    let base_cost = base_costs[i]
    dfs(topping_costs, 0, base_cost, target, Ref::{ val: closest_cost }, Ref::{
      val: closest_diff,
    })
  }
  closest_cost
}
