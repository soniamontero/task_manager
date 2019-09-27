class Repository
  def initialize
    @tasks = []
  end

  # READ ALL TASKS
  def all
    @tasks
  end

  # ADD TASK
  def add(task)
    @tasks << task
  end

  # REMOVE TASK
  def remove(task_index)
    @tasks.delete_at(task_index)
  end

  # FIND A TASK IN OUR 'REPO'
  def find(index)
    @tasks[index]
  end
end
