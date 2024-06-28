class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  String _model = "";
  double _speed = 0;

  Engine(this._model, this._speed);

  String get model => _model;
  set model(String value) => _model = value;

  double get speed => _speed;
  set speed(double value) => _speed = value;

  void displayEngineInfo() {
    print('Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  String _brand ="";
  String _model = "";
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
    print('Model: $_model');
    print('Owner: ${_owner.name}');
    print('Engine: ${_engine.model}');
  }

  void run() {
    print('Running at ${_engine.speed} km/h');
    print ('--------------------------------');
  }
}
class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String value) => _color = value;

  @override
  void displayCarInfo() {
    print('Model: $model');
    print('Color: $_color');
    print('Owner: ${owner.name}');
    print('Engine: ${engine.model}');
  }

  @override
  void run() {
    print('Running at 120 km/h');
  }
}

void main() {
  // Create a person
  Person owner = Person('Pannapong Phonprasit');

  // Create an engine
  Engine engine = Engine('V8', 220.0);

  // Create a car
  Car car = Car('Mclaren', 'P1',owner, engine);

  // Display car information and run the car
  car.displayCarInfo();
  car.run();

  // Create a Honda car
  Honda honda = Honda('Honda', 'Civic', owner, engine, 'Red');

  // Display Honda car information and run the Honda car
  honda.displayCarInfo();
  honda.run();
}
