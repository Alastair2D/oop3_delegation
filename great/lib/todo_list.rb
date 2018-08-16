class Todo

  attr_reader :to_do

  def initialize(description)
    @description = description
    @to_do = [] 
  end

  def add(item)
    @to_do << item 
  end 

  def to_string(item)
    all.each_with_index.map { |todo, index|
    to_dos_to_string(todo, index + 1) 
    }.join("\n")
  end

  # private 

  def all 
    @todos 
  end






end
