test "example 1" {
  inspect!(next_permutation([1, 2, 3]), content="[1, 3, 2]")
}

test "example 2" {
  inspect!(next_permutation([3, 2, 1]), content="[1, 2, 3]")
}

test "example 3" {
  inspect!(next_permutation([1, 1, 5]), content="[1, 5, 1]")
}

test "example 2" {
  inspect!(next_permutation([1, 3, 2]), content="[2, 1, 3]")
}
