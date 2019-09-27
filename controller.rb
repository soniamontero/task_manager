require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  # ADD TASK
  def add_task
    # 1. Ask the view for the description
    description = @view.ask_for_description
    # 2. Create the task
    task = Task.new(description)
    # 3. Add it to the repository
    @repository.add(task)
  end

  # REMOVE A TASK
  def remove_task
    # 1. Display the tasks and their number
    tasks = @repository.all
    @view.display(tasks)
    # 2. Ask the user which index of remove
    index = @view.ask_for_index
    # 3. Delete the task from the repo
    @repository.remove(index)
  end

  # LIST ALL TASKS
  def list
    # 1. Get the tasks from the repo
    tasks = @repository.all
    # 2. ask the view to display the tasks
    @view.display(tasks)
  end

  # MARK A TASK AS DONE
  def mark_as_done
    # 1. Display the tasks
    # tasks = @repository.all
    # @view.display(tasks)
    # OR
    list
    # 2. Ask the user for the index to mark as done
    index = @view.ask_for_index
    # 3. use the task method to mark as done
    # 3.1 Find our task in the repo
    # task = tasks[index]
    # OR
    task = @repository.find(index)
    # 3.2 mark it as done
    task.mark_as_done!
  end
end

















