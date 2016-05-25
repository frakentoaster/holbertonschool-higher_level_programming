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
  // Concats first and last names
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
  // Switch statement for subjects
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
  // Set bool if student
  func isStudent() -> Bool {
    return false
  }
}

// Student class sets bool if student
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
  } // Appends student to array
  func addStudent(p: Person) -> Bool {
    if p is Student {
      list_persons.append(p)
      return true
    } else {
      return false
    }
  }
  // Append mentor to array
  func addMentor(p: Person) -> Bool {
    if p is Mentor {
      list_persons.append(p)
      return true
    } else {
      return false
    }
  }
  // Returns list of students sorted by age
  func listStudents() -> [Person] {
    var list_students : ([Person]) = []
    for i in list_persons {
      if i is Student {
        list_students.append(i)
      }
    }
    return list_students.sort({ $0.age > $1.age })
  }
  // Returns list of mentors sorted by age
  func listMentors() -> [Person] {
    var list_mentors : ([Person]) = []
    for i in list_persons {
      if i is Mentor {
        list_mentors.append(i)
      }
    }
    return list_mentors.sort({ $0.age > $1.age })
  }
  // Returns list of mentors with subject(by downcasting) and sorted by age
  func listMentorsBySubject(subject: Subject) -> [Person] {
    var list_mentors : ([Person]) = []
    for i in list_persons {
      if i is Mentor {
        if let mentor = i as? Mentor {
          if mentor.subject == subject {
            list_mentors.append(i)
          }
        }
      }
    }
    return list_mentors.sort({ $0.age > $1.age })
  }
}
