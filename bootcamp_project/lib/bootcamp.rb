class Bootcamp
  
  attr_reader :name, :slogan, :teachers, :students

  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h,k| h[k] = [] }
  end

  def hire(teacher)
    @teachers.push(teacher)
  end

  def enroll(student)
    if @students.length < @student_capacity
      @students.push(student)
      return true
    else
      return false
    end
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    return false if !self.enrolled?(student)
    @grades[student] << grade
    true
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    num_of_grades = @grades[student].length
    return nil if num_of_grades < 1
    @grades[student].sum / num_of_grades
  end
  
end
