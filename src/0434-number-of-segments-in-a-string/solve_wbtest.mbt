///|
test "example 1" {
  assert_eq!(count_segments("Hello, my name is John"), 5)
}

///|
test "example 2" {
  assert_eq!(count_segments("    foo    bar"), 2)
}

// Note: The `Show` trait is assumed to be a standard trait for types that can be converted to String for display.
// Moonbit language doesn't have `Show` trait out-of-box; this is hypothetical and for expressing the intent of displaying types.
