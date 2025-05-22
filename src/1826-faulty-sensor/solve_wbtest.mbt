///|
test "example_1" {
  let sensor1 = [2, 3, 4, 5]
  let sensor2 = [2, 1, 3, 4]
  assert_eq!(faulty_sensor(sensor1, sensor2), 1)
}

///|
test "example_2" {
  let sensor1 = [2, 2, 2, 2, 2]
  let sensor2 = [2, 2, 2, 2, 5]
  assert_eq!(faulty_sensor(sensor1, sensor2), -1)
}

///|
test "example_3" {
  let sensor1 = [2, 3, 2, 2, 3, 2]
  let sensor2 = [2, 3, 2, 3, 2, 7]
  assert_eq!(faulty_sensor(sensor1, sensor2), 2)
}
