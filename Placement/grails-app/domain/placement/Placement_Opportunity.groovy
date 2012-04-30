package placement

class Placement_Opportunity {

String jobtitle
String companyname
String applications
Status status

static hasMany = [applications: Application]

    static constraints = {
    }
}
