type IntInt (Int, Int) derive(Hash)

fn IntInt::op_equal(self : IntInt, other : IntInt) -> Bool {
  self._.0 == other._.0 && self._.1 == other._.1
}

struct MovieEntry {
  shop : Int
  movie : Int
  price : Int
} derive(Eq)

struct MovieRentingSystem {
  shops : Int
  movie_map : @hashmap.T[Int, @priority_queue.T[MovieEntry]]
  mut rented_movies : @priority_queue.T[MovieEntry]
  rented_set : @hashmap.T[IntInt, MovieEntry]
}

impl Compare for MovieEntry with compare(a : MovieEntry, b : MovieEntry) -> Int {
  if a.price != b.price {
    return a.price - b.price
  }
  if a.shop != b.shop {
    return a.shop - b.shop
  }
  return a.movie - b.movie
}

fn MovieRentingSystem::new(
  n : Int,
  entries : Array[Array[Int]]
) -> MovieRentingSystem {
  let movie_map = @hashmap.T::new()
  let rented_movies = @priority_queue.T::new()
  let rented_set = @hashmap.T::new()
  for i = 0; i < entries.length(); i = i + 1 {
    let entry = entries[i]
    let shop = entry[0]
    let movie = entry[1]
    let price = entry[2]
    let movie_entry = MovieEntry::{ shop, movie, price }
    if not(movie_map.contains(movie)) {
      movie_map.set(movie, @priority_queue.T::new())
    }
    movie_map.get(movie).unwrap().push(movie_entry)
  }
  return MovieRentingSystem::{ shops: n, movie_map, rented_movies, rented_set }
}

fn MovieRentingSystem::search(
  self : MovieRentingSystem,
  movie : Int
) -> Array[Int] {
  let result = Array::new()
  if not(self.movie_map.contains(movie)) {
    return result
  }
  let pq = self.movie_map.get(movie).unwrap()
  let temp_pq = @priority_queue.T::new()
  while pq.length() > 0 && result.length() < 5 {
    let entry = pq.pop().unwrap()
    if not(self.rented_set.contains((entry.shop, entry.movie))) {
      result.push(entry.shop)
    }
    temp_pq.push(entry)
  }
  while temp_pq.length() > 0 {
    pq.push(temp_pq.pop().unwrap())
  }
  return result
}

fn MovieRentingSystem::rent(
  self : MovieRentingSystem,
  shop : Int,
  movie : Int
) -> Unit {
  let entry = self.movie_map.get(movie).unwrap().pop().unwrap()
  self.rented_movies.push(entry)
  self.rented_set.set((shop, movie), entry)
}

fn MovieRentingSystem::drop(
  self : MovieRentingSystem,
  shop : Int,
  movie : Int
) -> Unit {
  let entry = self.rented_set.get((shop, movie)).unwrap()
  let new_rented_movies = @priority_queue.T::new()
  self.rented_movies
  .iter()
  .each(
    fn(old_entry) {
      if entry != old_entry {
        new_rented_movies.push(old_entry)
      }
    },
  )
  self.rented_movies = new_rented_movies
  self.movie_map.get(movie).unwrap().push(entry)
  self.rented_set.remove((shop, movie))
}

fn MovieRentingSystem::report(self : MovieRentingSystem) -> Array[(Int, Int)] {
  let result = Array::new()
  let temp_pq = @priority_queue.T::new()
  while self.rented_movies.length() > 0 && result.length() < 5 {
    let entry = self.rented_movies.pop().unwrap()
    result.push((entry.shop, entry.movie))
    temp_pq.push(entry)
  }
  while temp_pq.length() > 0 {
    self.rented_movies.push(temp_pq.pop().unwrap())
  }
  return result
}

// Test cases
