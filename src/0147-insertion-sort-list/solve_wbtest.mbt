///|
test "example 1" {
  let list = ListNode::from_array([4, 2, 1, 3])
  @json.inspect(insertion_sort_list(list), content=[
    {
      "val": 1,
      "next": { "val": 2, "next": { "val": 3, "next": { "val": 4 } } },
    },
  ])
}

///|
test "example 2" {
  let list = ListNode::from_array([-1, 5, 3, 4, 0])
  @json.inspect(insertion_sort_list(list), content=[
    {
      "val": -1,
      "next": {
        "val": 0,
        "next": { "val": 3, "next": { "val": 4, "next": { "val": 5 } } },
      },
    },
  ])
}
