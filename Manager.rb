require_relative "Employee"
class Manager < Employee
    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multiplier, employees)
        sum = employees.inject(0) {|accu, employee| accu += employee.salary } 
        sum * multiplier
    end

    attr_reader :employees
end