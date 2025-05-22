test "example 1" {
  let result = is_palindrome("A man, a plan, a canal: Panama")
  @test.is_true!(result)
}

test "example 2" {
  let result = is_palindrome("  ")
  @test.is_true!(result)
}

test "example 3" {
  let result = is_palindrome("TEST")
  @test.is_false!(result)
}
