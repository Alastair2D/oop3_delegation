require "todo"

# a Class normally has behaviour and state
# ListPrinter may be better served as a Module as it doesn't have state
# You only need an intance of a class if you need to store state
# Modules are just for behaviour.  
# A module doesn't know anythign about itself.  
# A boris bike knows about itself, it knows if it is #working?

class ListPrinter 

  def initialize
    @all_todos = []
  end

  def add(description, todo_class = Todo)
    @all_todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  private

  def all
    @todos
  end
end


# See 'do not look till at the end'
# On line 17 of exemplar 'to_do_list' passing in a module
# Look at 'to_do_list_printer_spec' for doubles syntax
# let(:todos) { double(:todo1), double(:todo2) }
# complete as private attr reader
# is complete a setter or getter  
# the ? makes it clear you are 
# Ruby won't let you set an instance var with a ? 
