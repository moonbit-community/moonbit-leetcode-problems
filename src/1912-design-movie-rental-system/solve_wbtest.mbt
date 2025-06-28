///|
test {
  let entries = [
    [0, 1, 5],
    [0, 2, 6],
    [0, 3, 7],
    [1, 1, 4],
    [1, 2, 7],
    [2, 1, 5],
  ]
  let movie_renting_system = MovieRentingSystem::new(3, entries)
  let search_result = movie_renting_system.search(1)
  inspect(search_result, content="[1, 0, 2]")
  movie_renting_system.rent(0, 1)
  movie_renting_system.rent(1, 2)
  let report_result = movie_renting_system.report()
  inspect(report_result, content="[[0, 1], [1, 2]]")
  movie_renting_system.drop(1, 2)
  let search_result_2 = movie_renting_system.search(2)
  inspect(search_result_2, content="[0, 1]")
}
