class Student {
  late String _name;
  late List<int> _resultArray;

  // Default constructor
  Student() {
    _name = ''; // Direct initialization
    _resultArray = List<int>.filled(5, 0); // Direct initialization for result array
  }

  // One-argument constructor
  Student.withName(String name) {
    _name = name; // Direct assignment
    _resultArray = List<int>.filled(5, 0); // Direct initialization for result array
  }

  // Two-argument constructor
  Student.withDetails(String name, List<int> resultArray) {
    _name = name; // Direct assignment
    assert(resultArray.length == 5, 'Result array must contain exactly 5 subjects');
    _resultArray = List<int>.from(resultArray); // Direct initialization for result array
  }

  // Method to calculate average of marks
  double average() {
    if (_resultArray.isEmpty) return 0.0;
    return _resultArray.reduce((a, b) => a + b) / _resultArray.length;
  }

  // Method to compare averages with another student
  String compareAverage(Student other) {
    double thisAverage = this.average();
    double otherAverage = other.average();

    if (thisAverage > otherAverage) {
      return '${this._name} has a higher average (${thisAverage.toStringAsFixed(2)}) than ${other._name} (${otherAverage.toStringAsFixed(2)})';
    } else if (thisAverage < otherAverage) {
      return '${other._name} has a higher average (${otherAverage.toStringAsFixed(2)}) than ${this._name} (${thisAverage.toStringAsFixed(2)})';
    } else {
      return '${this._name} and ${other._name} have the same average (${thisAverage.toStringAsFixed(2)})';
    }
  }

  // Getters
  String get name => _name;
  List<int> get resultArray => List<int>.from(_resultArray);
}
