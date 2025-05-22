struct SeatManager {
  available_seats : Array[Int]
}

fn SeatManager::new(n : Int) -> SeatManager {
  let seats = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    seats[i] = i + 1
  }
  SeatManager::{ available_seats: seats }
}

fn SeatManager::reserve(self : SeatManager) -> Int {
  let seat = self.available_seats[0]
  self.available_seats.remove(0) |> ignore
  seat
}

fn SeatManager::unreserve(self : SeatManager, seat_number : Int) -> Unit {
  let mut i = 0
  while i < self.available_seats.length() && self.available_seats[i] < seat_number {
    i = i + 1
  }
  self.available_seats.insert(i, seat_number)
}

// Test cases
