test "example" {
  let grid : Array[Array[Char]] = [
    ['0', 'E', '0', '0'],
    ['E', '0', 'W', 'E'],
    ['0', 'E', '0', '0'],
  ]
  assert_eq!(maxKilledEnemies(grid), 3)
}
