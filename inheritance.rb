#coding: utf-8

class Employee
  attr_accessor :first_name, :last_name, :age, :cost

  def initialize(options = {})
    @first_name, @last_name, @age, @cost = options[:first_name], options[:last_name], options[:age], options[:cost]
  end

  def to_s
    p "*"*40
    "First name: #@first_name\nLast name: #@last_name\nAge: #@age\nCost: #@cost "
  end
end

class Manager < Employee
  attr_accessor :bonus

  def initialize(options = {})
    @bonus = options[:bonus]
    super
  end

  def cost
    super + @bonus
  end

  def to_s
    p "*"*40
    "First name: #@first_name\nLast name: #@last_name\nAge: #@age\nCost: #{self.cost}"
  end
end

e1 = Employee.new first_name: "Denis", last_name: "Ryabokon", age: 23, cost: 175
e2 = Employee.new first_name: "Alex", last_name: "Petrov", age: 25, cost: 150
e3 = Manager.new  first_name: "Vlad", last_name: "Ivanov", age: 29, cost: 200, bonus: 10

puts "e1 info:\n#{e1}"
puts "e2 info:\n#{e2}"
puts "e3 info:\n#{e3}"

p e1.bonus if e1.respond_to? "bonus"
p e3.bonus if e3.respond_to? "bonus"
