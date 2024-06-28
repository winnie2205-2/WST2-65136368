class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  set model(String value) => _model = value;

  int get speed => _speed;
  set speed(int value) => _speed = value;

  void displayEngineInfo() {
    print("Model: $_model");
    print("Speed: $_speed km/h");
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get model => _model;
  set model(String value) => _model = value;

  Person get owner => _owner;
  set owner(Person value) => _owner = value;

  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;

  void displayCarInfo() {
    print("Car Information:");
    print("Brand: $_brand");
    print("Model: $_model");
    print("Owner: ${_owner.name}");
    print("Engine:");
    _engine.displayEngineInfo();
  }

  void run() {
    print("The car is running at ${_engine.speed} km/h.");
  }
}


class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String value) => _color = value;


  void run() {
    print("The Honda is running at 120 km/h.");
  }
                       
  void displayCarInfo() {
    print("Car Information:");
    print("Brand: ${super._brand}");
    print("Model: ${super._model}");
    print("Color: $_color");
    print("Owner: ${super._owner.name}");
    print("Engine:");
    super._engine.displayEngineInfo();
  }
}

void main() {
var cars = [
    Car("Ford", "Fiesta", Person("Wasinee Pimonwong"), Engine("1498 cc", 254)),
    Honda("Honda", "Accord", Person("Wasinee Pimonwong"), Engine("1.5", 120), "White")
  ];

  for (var car in cars) {
    car.displayCarInfo();
    car.run();
    print("------------------------");
  }
}