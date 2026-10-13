// Exercice 2 : Point dans le plan

class Point {
  double _x; // privé grâce au _
  double _y;

  // Constructeur qui prend les coordonnées
  Point(this._x, this._y);

  // Déplace le point
  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display() {
    print("Point : ($_x, $_y)");
  }
}

void main() {
  var pt = Point(2, 5);
  pt.display();
  pt.move(-1, 3);
  pt.display();
}