class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      state = task.done ? "[x]" : "[ ]"
      puts "#{index + 1}. #{state} #{task.description}"
    end
  end

  def ask_for_description
    puts "What is the description?"
    print "> "
    return gets.chomp
  end

  def ask_for_index
    puts "Which index?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
