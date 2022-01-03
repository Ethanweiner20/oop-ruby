class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  # student is a Student
  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("joe", 90)
bob = Student.new("bob", 80)
puts "Well done!" if joe.better_grade_than?(bob)