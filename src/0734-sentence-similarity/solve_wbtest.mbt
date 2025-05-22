///|
test "example 1" {
  let sentence1 : Array[String] = ["an", "extraordinary", "meal"]
  let sentence2 : Array[String] = ["one", "good", "dinner"]
  let similar_pairs = @immut/list.T::of([
    Pair::{ first: "an", second: "one" },
    Pair::{ first: "extraordinary", second: "good" },
    Pair::{ first: "meal", second: "dinner" },
  ])
  @test.is_false!(are_sentences_similar(sentence1, sentence2, similar_pairs))
}

///|
test "example 2" {
  let sentence1 : Array[String] = ["great", "acting", "skills"]
  let sentence2 : Array[String] = ["fine", "drama", "talent"]
  let similar_pairs = @immut/list.T::of([
    Pair::{ first: "great", second: "fine" },
    Pair::{ first: "acting", second: "drama" },
    Pair::{ first: "skills", second: "talent" },
  ])
  @test.is_true!(are_sentences_similar(sentence1, sentence2, similar_pairs))
}
