fn flip_and_invert(image : Array[Array[Int]]) -> Array[Array[Int]] {
  let image = image // Since Array type is immutable, we need to make a mutable copy.
  image.each(
    fn(row) {
      let mut i = 0
      let mut j = row.length() - 1
      while i < j {
        if row[i] == row[j] {
          row[i] = row[i].lxor(1)
          row[j] = row[j].lxor(1)
        }
        i = i + 1
        j = j - 1
      }
      if i == j {
        row[i] = row[i].lxor(1)
      }
    },
  )
  image
}
