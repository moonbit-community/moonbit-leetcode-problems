///|
fn array_strings_are_equal(
  word1 : Array[String],
  word2 : Array[String]
) -> Bool {
  let joined_word1 = join_array(word1)
  let joined_word2 = join_array(word2)
  joined_word1 == joined_word2
}

///|
fn join_array(arr : Array[String]) -> String {
  let mut result : String = ""
  for i = 0; i < arr.length(); i = i + 1 {
    result = result + arr[i]
  }
  result
}
