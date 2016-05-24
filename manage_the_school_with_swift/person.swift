/*
  Rick Houser
  Holberton School of Software Engineering
  Higher-Level Programming project 153
  Class describes a Person
  Exercise to manipulate Object, Class, Enum and Protocols in Swift
*/
enum Subject {
  case Math
  case English
  case French
  case History
}

protocol Classify {
  func isStudent() -> Bool
}

class Person {
  var first_name: String
  var last_name: String
  var age: Int

  init(first_name: String, last_name: String, age: Int) {
    self.first_name = first_name
    self.last_name = last_name
    self.age = age
  }

  func fullName() -> String {
    return first_name + " " + last_name
  }
}

class Mentor : Person, Classify {
  var subject: Subject
  init(first_name: String, last_name: String, age: Int, subject: Subject = Subject.Math) {
    self.subject = subject
    super.init(first_name : first_name, last_name : last_name, age : age)
  }
  func stringSubject() -> String {
    switch subject {
      case.Math:
        return("Math")
      case.English:
        return("English")
      case.French:
        return("French")
      case.History:
        return("History")
    }
  }
  func isStudent() -> Bool {
    return false
  }
}

class Student : Person, Classify {
  func isStudent() -> Bool {
    return true
  }
}

class School {
  var name: String
  var list_persons: ([Person]!) = []
  init(name: String) {
    self.name = name
  }
  func addStudent(p: Person) -> Bool {
    if p is Student {
      list_persons.append(p)
      return true
    } else {
      return false
    }
  }

  func addMentor(p: Person) -> Bool {
    if p is Mentor {
      list_persons.append(p)
      return true
    } else {
      return false
    }
  }
}
