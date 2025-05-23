///|
pub enum Tree {
  Empty
  Node(Int, Tree, Tree, Tree)
} derive(Eq, Show)

///|
impl ToJson for Tree with to_json(self) {
  guard self is Node(v, l, r, n) else { Json::null() }
  [v.to_json(), l.to_json(), r.to_json(), n.to_json()]
}
