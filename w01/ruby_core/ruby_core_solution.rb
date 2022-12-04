# Write your solution below
class Employee
  attr_accessor :first_name, :last_name, :salary, :active, :email

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @email = input_options[:email]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
  
  def full_name
    full_name = first_name + " " + last_name
    if last_name[-1] == "s"
      p first_name + " " + last_name + " Esquire" 
    else 
      p full_name
    end 
  end 

  def email
    email = first_name + last_name + "@gmail.com"
  end 

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
# employee1.full_name
# employee2.full_name
# employee1.email

x = 0 
new_employees = []
while x < 100
  employee = Employee.new(
  first_name: (0...10).map { ('a'..'z').to_a[rand(26)] }.join,
  last_name: (0...10).map { ('a'..'z').to_a[rand(26)] }.join,
  salary: (0...10).map { ('1'..'9').to_a[rand(26)] }.join,
  active: true)
  new_employees << employee
  x += 1 
end 
new_employees.print_info