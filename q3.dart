// Abstract class Person
abstract class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String name) => _name = name;

  bool isOutstanding();
}

// Student class extending Person
class Student extends Person {
  double _cgpa;

  Student(String name, this._cgpa) : super(name);

  double get cgpa => _cgpa;
  set cgpa(double cgpa) => _cgpa = cgpa;

  @override
  bool isOutstanding() {
    return _cgpa > 3.5;
  }
}

// Professor class extending Person
class Professor extends Person {
  int _numberOfPublications;

  Professor(String name, this._numberOfPublications) : super(name);

  int get numberOfPublications => _numberOfPublications;
  set numberOfPublications(int publications) => _numberOfPublications = publications;

  @override
  bool isOutstanding() {
    return _numberOfPublications > 50;
  }
}

// Movie class
class Movie {
  int _id;
  String _title;
  int _rentalDays;

  Movie(this._id, this._title, this._rentalDays);

  int get id => _id;
  String get title => _title;
  int get rentalDays => _rentalDays;

  set id(int id) => _id = id;
  set title(String title) => _title = title;
  set rentalDays(int rentalDays) => _rentalDays = rentalDays;

  bool equals(Movie other) {
    return this._id == other.id && this._title == other.title && this._rentalDays == other.rentalDays;
  }

  double calcLateFees(int lateDays) {
    // TODO: implement calcLateFees
    throw UnimplementedError();
  }
}

// Action class extending Movie
class Action extends Movie {
  Action(int id, String title, int rentalDays) : super(id, title, rentalDays);

  @override
  double calcLateFees(int lateDays) {
    return 3.0 * lateDays;
  }
}

// Comedy class extending Movie
class Comedy extends Movie {
  Comedy(int id, String title, int rentalDays) : super(id, title, rentalDays);

  @override
  double calcLateFees(int lateDays) {
    return 2.5 * lateDays;
  }
}

// Drama class extending Movie
class Drama extends Movie {
  Drama(int id, String title, int rentalDays) : super(id, title, rentalDays);

  @override
  double calcLateFees(int lateDays) {
    return 2.0 * lateDays;
  }
}

void main() {
  // Testing Movie and its derived classes
  Movie movie1 = Action(1, 'Die Hard', 3);
  Movie movie2 = Comedy(2, 'The Hangover', 2);
  Movie movie3 = Drama(3, 'The Shawshank Redemption', 4);

  print('Movie 1 Late Fee: \$${movie1.calcLateFees(2).toStringAsFixed(2)}');
  print('Movie 2 Late Fee: \$${movie2.calcLateFees(3).toStringAsFixed(2)}');
  print('Movie 3 Late Fee: \$${movie3.calcLateFees(1).toStringAsFixed(2)}');

  // Type compatibility using equals method
  print('Movie 1 and Movie 2 are equal: ${movie1.equals(movie2)}'); // false

  // Downcasting to reset ID for Action movie
  if (movie1 is Action) {
    (movie1 as Action).id = 10;
  }
  print('Movie 1 ID after downcasting: ${movie1.id}');

  // Array of Person objects
  List<Person> people = [
    Student('Alice', 3.8),
    Professor('Dr. Smith', 70),
  ];

  // Testing isOutstanding method for each person
  for (var person in people) {
    print('${person.name} is outstanding: ${person.isOutstanding()}');
    if (person is Professor) {
      (person as Professor).numberOfPublications = 100; // Setting publications for Professor
      print('${person.name} is outstanding after setting publications: ${person.isOutstanding()}');
    }
  }
}
