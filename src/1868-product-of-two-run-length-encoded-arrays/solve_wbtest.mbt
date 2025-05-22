test "example 1" {
  let encoded1 = Array::make(2, Pair::{ value: 0, freq: 0 })
  encoded1[0] = Pair::{ value: 1, freq: 3 }
  encoded1[1] = Pair::{ value: 2, freq: 3 }
  let encoded2 = Array::make(2, Pair::{ value: 0, freq: 0 })
  encoded2[0] = Pair::{ value: 6, freq: 3 }
  encoded2[1] = Pair::{ value: 3, freq: 3 }
  let result = product_of_encoded_arrays(encoded1, encoded2)
  assert_eq!(result.length(), 1)
  assert_eq!(result[0].value, 6)
  assert_eq!(result[0].freq, 6)
}

test "example 2" {
  let encoded1 = Array::make(3, Pair::{ value: 0, freq: 0 })
  encoded1[0] = Pair::{ value: 1, freq: 3 }
  encoded1[1] = Pair::{ value: 2, freq: 1 }
  encoded1[2] = Pair::{ value: 3, freq: 2 }
  let encoded2 = Array::make(2, Pair::{ value: 0, freq: 0 })
  encoded2[0] = Pair::{ value: 2, freq: 3 }
  encoded2[1] = Pair::{ value: 3, freq: 3 }
  let result = product_of_encoded_arrays(encoded1, encoded2)
  assert_eq!(result.length(), 3)
  assert_eq!(result[0].value, 2)
  assert_eq!(result[0].freq, 3)
  assert_eq!(result[1].value, 6)
  assert_eq!(result[1].freq, 1)
  assert_eq!(result[2].value, 9)
  assert_eq!(result[2].freq, 2)
}
