// Riyan Maulana Putra __ 065119081
// 1. Code simple class dart, contoh class sepeda

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void speedUp(int increment) {
    _speed += increment;
  }

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  @override
  String toString() => 'Kecepatan Sepeda: $_speed  Km/j';
}

void main() {
  var bike = Bicycle(2, 1);
  bike.speedUp(15);

  print(bike);
}
