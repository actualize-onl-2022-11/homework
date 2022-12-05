require_relative 'task.rb'

class List
  attr_reader :name, :tasks

  def initialize(name)
    @name = name
    @tasks = []
  end

  def add_task(name)
    @tasks << Task.new(name)
  end

  def incomplete_tasks
    return @tasks.select{ |task| task.completed == false }
  end

  def scheduled_tasks
    return @tasks.select{ |task| task.due_date }
  end

  def unscheduled_tasks
    return @tasks.select{ |task| task.due_date == nil }
  end

  def sorted_by_due_date
    return scheduled_tasks.sort_by { |task| task.due_date } + unscheduled_tasks
  end
end