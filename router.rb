class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What do you want to do?"
      puts "1 - Read the tasks"
      puts "2 - Add a task"
      puts "3 - Remove a task"
      puts "4 - Mark task as done"
      user_answer = gets.chomp.to_i
      case user_answer
      when 1 then @controller.list
      when 2 then @controller.add_task
      when 3 then @controller.remove_task
      when 4 then @controller.mark_as_done
      end
    end
  end
end
