# to hold details about the person
class Person
  attr_reader :first_name, :last_name

  def initialize(firstname, surname)
    @first_name = firstname
    @last_name = surname
  end
end
