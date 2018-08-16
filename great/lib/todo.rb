class Todo

    attr_reader :description, :complete, :printer

  def
    initialize(description, printer_Klass = ListPrinter.new)
    @description = description
    @complete = false
    @printer = printer_Klass 
  end

  def mark_as_complete
    @complete = true 
  end


  def prints 
    printer.print_me(description, complete)
  end