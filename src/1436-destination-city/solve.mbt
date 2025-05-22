fn dest_city(paths : Array[(String, String)]) -> String {
  let paths_len = paths.length()
  let set : @hashset.T[String] = @hashset.T::of([])
  for i = 0; i < paths_len; i = i + 1 {
    let (a, _) = paths[i]
    set.insert(a)
  }
  for i = 0; i < paths_len; i = i + 1 {
    let (_, b) = paths[i]
    if not(set.contains(b)) {
      return b
    }
  }
  ""
}
