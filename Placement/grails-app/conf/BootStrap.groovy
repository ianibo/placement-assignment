import placement.Student
class BootStrap {

    def init = { servletContext ->
      new Student(name:'Phil',coursecode:'g500',notes:'successful',applications:'1').save();
    }
    def destroy = {
    }
}
