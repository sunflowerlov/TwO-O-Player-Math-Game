class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @correct_answer = @number1 + @number2
  end

  def display_question(player_number)
    puts "Player #{player_number}: what does #{@number1} plus #{@number2} equal?"
    print ">"
  end

  def check_answer(answer)
    answer == @correct_answer
  end
end
