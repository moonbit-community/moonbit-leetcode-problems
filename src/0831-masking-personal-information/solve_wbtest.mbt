///|
test "email masking" {
  assert_eq(maskPII("John.Doe@example.com"), "j*****e@example.com")
}

///|
test "US phone number masking" {
  assert_eq(maskPII("1(234)567-890"), "***-***-7890")
}

///|
test "international phone number masking" {
  assert_eq(maskPII("+86(10)12345678"), "+**-***-***-5678")
}
