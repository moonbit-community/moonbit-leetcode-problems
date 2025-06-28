///|
test "example 1" {
  let req_skills = ["coding", "math", "logic"]
  let people = [["coding"], ["math", "coding"], ["logic", "coding"]]
  assert_eq(smallest_sufficient_team(req_skills, people), [0, 2])
}

///|
test "example 2" {
  let req_skills = ["algorithms", "math", "java", "reactjs", "csharp", "aws"]
  let people = [
    ["algorithms", "math", "java"],
    ["algorithms", "reactjs", "csharp"],
    ["java", "csharp", "aws"],
    ["reactjs", "csharp"],
    ["csharp", "math"],
    ["aws", "java"],
  ]
  assert_eq(smallest_sufficient_team(req_skills, people), [0, 2, 3, 5])
}
