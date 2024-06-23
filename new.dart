class Person {
  String _name;
  String _address;
  String _phoneNumber;
  String _email;

  Person(this._name, this._address, this._phoneNumber, this._email);

  void display() {
    print('Name: $_name');
    print('Address: $_address');
    print('Phone Number: $_phoneNumber');
    print('Email: $_email');
  }
}

class Student extends Person {
  String _status;

  Student(String name, String address, String phoneNumber, String email, this._status)
      : super(name, address, phoneNumber, email);

  @override
  void display() {
    super.display();
    print('Status: $_status');
  }
}

class Employee extends Person {
  String _office;
  double _salary;
  DateTime _dateHired;

  Employee(String name, String address, String phoneNumber, String email, this._office, this._salary, this._dateHired)
      : super(name, address, phoneNumber, email);

  @override
  void display() {
    super.display();
    print('Office: $_office');
    print('Salary: $_salary');
    print('Date Hired: $_dateHired');
  }
}

class Faculty extends Employee {
  String _officeHours;
  String _rank;

  Faculty(String name, String address, String phoneNumber, String email, String office, double salary, DateTime dateHired, this._officeHours, this._rank)
      : super(name, address, phoneNumber, email, office, salary, dateHired);

  @override
  void display() {
    super.display();
    print('Office Hours: $_officeHours');
    print('Rank: $_rank');
  }
}

class Staff extends Employee {
  String _title;

  Staff(String name, String address, String phoneNumber, String email, String office, double salary, DateTime dateHired, this._title)
      : super(name, address, phoneNumber, email, office, salary, dateHired);

  @override
  void display() {
    super.display();
    print('Title: $_title');
  }
}

void main() {
  var faculty = Faculty(
    'John Doe',
    '123 Main St',
    '555-1234',
    'john.doe@example.com',
    'A123',
    60000,
    DateTime(2020, 7, 1),
    '9 AM - 5 PM',
    'Professor',
  );

  var staff = Staff(
    'Jane Smith',
    '456 Oak Ave',
    '555-5678',
    'jane.smith@example.com',
    'B456',
    45000,
    DateTime(2021, 3, 15),
    'Administrative Assistant',
  );

  // Displaying information
  print('Faculty Information:');
  faculty.display();
  print('\nStaff Information:');
  staff.display();
}
