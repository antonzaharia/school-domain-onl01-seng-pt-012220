class School
  attr_reader :roster, :school_name
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end 
  
  def add_student(name, grade)
    if @roster.key?(grade)
    @roster[grade] << name
    else
    name_array = []
    name_array << name
    @roster[grade] = name_array
    end
  end
  def grade(num)
    students = []
    @roster.each do |key, value|
      if num == key
        students << value
        students
      end
    end
  end
end