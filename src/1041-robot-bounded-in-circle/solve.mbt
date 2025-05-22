///|
fn is_robot_bounded(instructions : String) -> Bool {
  let dist : Array[Int] = [0, 0, 0, 0]
  let mut k = 0
  let instr_length = instructions.length()
  for i = 0; i < instr_length; i = i + 1 {
    match instructions[i] {
      'L' => k = (k + 1) % 4
      'R' => k = (k + 3) % 4
      _ => dist[k] = dist[k] + 1
    }
  }
  (dist[0] == dist[2] && dist[1] == dist[3]) || k != 0
}
