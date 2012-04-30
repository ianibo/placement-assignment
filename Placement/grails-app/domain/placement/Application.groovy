package placement

class Application {

String code
String description

static belongsTo = [students: Student,placement_opportunities: Placement_Opportunity]

    static constraints = {
    }
}
