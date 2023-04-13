class Player
  attr_reader :player_number, :lives

  def initialize(player_number)
    @player_number = player_number
    @lives = 3
  end

  def answer_question(question)
    question.check_answer(gets.chomp.to_i)
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end
