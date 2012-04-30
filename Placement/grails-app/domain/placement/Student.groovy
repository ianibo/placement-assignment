package placement

class Student {

String name
String coursecode
String notes
String applications

static hasMany = [applications: Application]

    static constraints = {
    }
}
