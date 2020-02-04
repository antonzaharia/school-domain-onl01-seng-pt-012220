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
    if @roster.key?(num)
      @roster[num]
    end
  end
  def sort 
    @roster.each_value do |value|
      value.sort
      value
    end
  end
  
end