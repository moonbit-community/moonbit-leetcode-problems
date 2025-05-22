fn is_white_square(coordinates : String) -> Bool {
  let col = coordinates[0].to_int() - 'a'.to_int() + 1
  let row = coordinates[1].to_int() - '1'.to_int() + 1
  (col + row) % 2 == 0
}
