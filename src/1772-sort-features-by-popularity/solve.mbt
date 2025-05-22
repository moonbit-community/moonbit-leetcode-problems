///|
fn split(string : String, delimiter : Char) -> Array[String] {
  let buffer = Buffer::new()
  let array = []
  for i = 0; i < string.length(); i = i + 1 {
    if string[i] == delimiter {
      buffer.write_char(string[i])
    } else {
      array.push(buffer.to_string())
      buffer.reset()
    }
  }
  array
}

///|
fn sort_features_by_popularity(
  features : Array[String],
  responses : Array[String]
) -> Array[String] {
  let feature_count : @hashmap.T[String, Int] = @hashmap.new()
  let response_set : Array[@hashmap.T[String, Bool]] = Array::make(
    responses.length(),
    @hashmap.new(),
  )

  // Initialize feature_count with all features set to 0
  for i = 0; i < features.length(); i = i + 1 {
    feature_count.set(features[i], 0)
  }

  // Process each response to build response_set and update feature_count
  for i = 0; i < responses.length(); i = i + 1 {
    let words = responses[i] |> split(' ')
    for j = 0; j < words.length(); j = j + 1 {
      response_set[i].set(words[j], true)
    }
  }

  // Count the popularity of each feature
  for i = 0; i < features.length(); i = i + 1 {
    let feature = features[i]
    for j = 0; j < response_set.length(); j = j + 1 {
      if response_set[j].contains(feature) {
        feature_count.set(feature, feature_count.get_or_default(feature, 0) + 1)
      }
    }
  }

  // Create an array of tuples (feature, count, original_index)
  let feature_info : Array[(String, Int, Int)] = Array::make(
    features.length(),
    ("", 0, 0),
  )
  for i = 0; i < features.length(); i = i + 1 {
    feature_info[i] = (
      features[i],
      feature_count.get_or_default(features[i], 0),
      i,
    )
  }

  // Sort feature_info by count (descending) and by original index if counts are equal
  feature_info.sort_by(fn(a, b) -> Int {
    if a.1 != b.1 {
      return b.1 - a.1
    } else {
      return a.2 - b.2
    }
  })

  // Extract the sorted features
  let sorted_features : Array[String] = Array::make(features.length(), "")
  for i = 0; i < feature_info.length(); i = i + 1 {
    sorted_features[i] = feature_info[i].0
  }
  return sorted_features
}
