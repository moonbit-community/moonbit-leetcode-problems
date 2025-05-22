///|
fn average_waiting_time(customers : Array[(Int, Int)]) -> Double {
  let mut total_waiting_time = 0.0
  let mut current_time = 0
  for i = 0; i < customers.length(); i = i + 1 {
    let (arrival, time) = customers[i]
    if current_time < arrival {
      current_time = arrival
    }
    let finish_time = current_time + time
    let waiting_time = finish_time - arrival
    total_waiting_time = total_waiting_time + waiting_time.to_double()
    current_time = finish_time
  }
  let average_waiting_time = total_waiting_time / customers.length().to_double()
  average_waiting_time
}
