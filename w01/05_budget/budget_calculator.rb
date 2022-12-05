class Income
  attr_reader :name, :category
  attr_accessor :dollar_amount, :annual_frequency

  CATEGORIES = ["Wages", "Investment", "Royalties", "Other"]

  def initialize(name, dollar_amount, annual_frequency)
    @name = name
    @dollar_amount = dollar_amount
    @annual_frequency = annual_frequency
  end

  def assign_category(category)
    if(CATEGORIES.include?(category))
      @category = category
    end
    self
  end
end

class Expense
  attr_reader :name
  attr_accessor :dollar_amount, :annual_frequency

  CATEGORIES = ["Housing", "Transportation", "Education", "Personal", "Savings", "Other"]

  def initialize(name, dollar_amount, annual_frequency)
    @name = name
    @dollar_amount = dollar_amount
    @annual_frequency = annual_frequency
  end

  def assign_category(category)
    if(CATEGORIES.include?(category))
      @category = category
    end
    self
  end
end

class BudgetCalculator
  attr_reader :incomes, :expenses

  def initialize
    @incomes = []
    @expenses = []
  end

  def add_income(name, dollar_amount, annual_frequency)
    @incomes << Income.new(name, dollar_amount, annual_frequency)
  end

  def add_expense(name, dollar_amount, annual_frequency)
    @expenses << Expense.new(name, dollar_amount, annual_frequency)
  end

  def annual_income_total
    @incomes
      .map{ |income| income.dollar_amount * income.annual_frequency }
      .reduce(:+)
  end 

  def annual_expenses_total
    @expenses
      .map{ |expense| expense.dollar_amount * expense.annual_frequency }
      .reduce(:+)
  end 

  def annual_net_income
    annual_income_total - annual_expenses_total
  end

  def find_income(name)
    @incomes.find{ |income| income.name == name }
  end

  def find_expense(name)
    @expenses.find{ |expense| expense.name == name }
  end

  def edit_income_dollar_amount(name, dollar_amount)
    income = find_income(name)
    income.dollar_amount = dollar_amount
  end

  def edit_expense_dollar_amount(name, dollar_amount)
    expense = find_expense(name)
    expense.dollar_amount = dollar_amount
  end

  def edit_income_annual_frequency(name, annual_frequency)
    income = find_income(name)
    income.annual_frequency = annual_frequency
  end

  def edit_expense_annual_frequency(name, annual_frequency)
    expense = find_expense(name)
    expense.annual_frequency = annual_frequency
  end
end
