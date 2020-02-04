class School
  attr_reader :roster, :school_name
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end 
  def add_student(name, grade)
    name_array = []
    name_array << name
    if !@roster.key?(grade)
    @roster[grade] = name_array
    else
    @roster[grade] = name_array << name
    end
  end
end