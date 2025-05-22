///|
fn car_fleet_ii(cars : Array[Array[Int]]) -> Array[Double] {
  let n = cars.length()
  let answer = Array::make(n, -1.0)
  let stack = Array::make(n, -1)
  for i = 0; i < n; i = i + 1 {
    let position_i = cars[i][0]
    let speed_i = cars[i][1]
    while stack.length() > 0 {
      let j = stack[stack.length() - 1]
      let position_j = cars[j][0]
      let speed_j = cars[j][1]
      if speed_i > speed_j {
        let time_to_collide = (position_j - position_i).to_double() /
          (speed_i - speed_j).to_double()
        if time_to_collide > answer[j] {
          answer[i] = time_to_collide
          match stack.pop() {
            Some(_) => ()
            None => ()
          }
        } else {
          break
        }
      } else {
        break
      }
    }
    stack.push(i)
  }
  answer
}
