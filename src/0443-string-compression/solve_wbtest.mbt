test "example 1" {
  let input : Array[Char] = ['a', 'a', 'b', 'b', 'c', 'c', 'c']
  let output : Int = compress(input)
  assert_eq!(output, 6)
}

test "example 2" {
  let input : Array[Char] = ['a']
  let output : Int = compress(input)
  assert_eq!(output, 1)
}

test "example 3" {
  let input : Array[Char] = ['a', 'b', 'c']
  let output : Int = compress(input)
  assert_eq!(output, 3)
}
