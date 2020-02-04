class School
  attr_reader :roster, :school_name
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end 
  def add_student(name, grade)
    name_array = []
    name_array << name
    if @roster.empty?
    @roster[grade] = name_array
  else
    if @roster.key?(grade)
      
  end
  end
end