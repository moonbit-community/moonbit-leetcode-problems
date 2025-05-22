///|
struct Image {
  image : Array[Array[Int]]
  nc : Int
  oc : Int
}

///|
fn Image::dfs(self : Image, i : Int, j : Int) -> Unit {
  let dirs : Array[Int] = [-1, 0, 1, 0, -1]
  if i < 0 ||
    i >= self.image.length() ||
    j < 0 ||
    j >= self.image[0].length() ||
    self.image[i][j] != self.oc ||
    self.image[i][j] == self.nc {
    ()
  } else {
    self.image[i][j] = self.nc
    for k = 0; k < 4; k = k + 1 {
      self.dfs(i + dirs[k], j + dirs[k + 1])
    }
  }
}

///|
fn flood_fill(
  image : Array[Array[Int]],
  sr : Int,
  sc : Int,
  color : Int
) -> Array[Array[Int]] {
  let nc = color
  let oc = image[sr][sc]
  let img = Image::{ image, nc, oc }
  img.dfs(sr, sc)
  img.image
}
