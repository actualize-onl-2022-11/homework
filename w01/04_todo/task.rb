require 'date'

class Task
  attr_reader :name, :due_date, :completed

  def initialize(name)
    @name = name
    @due_date = nil
    @completed = false
  end

  def complete!
    @completed = true
  end

  def set_due_date(month, day, year)
    @due_date = Date.new(year, month, day)
  end

  def overdue?
    return @completed == false && @due_date && @due_date < Date.today
  end

  def friendly_due_date
    if @due_date
      return @due_date.strftime('%b %d, %Y')
    else
      return 'NO DUE DATE'
    end
  end
end