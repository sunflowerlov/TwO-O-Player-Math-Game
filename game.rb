require_relative 'player'
require_relative 'question'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def game_over?
    !@player1.is_alive? || !@player2.is_alive?
  end


  def play
    while !game_over?
      question = Question.new
      question.display_question(@current_player.player_number)
      
      if @current_player.answer_question(question)
        puts "Player #{@current_player.player_number}: YES!"
      else
        puts "Player #{@current_player.player_number}: No!"
        @current_player.lose_life
      end

      display_scores
      switch_players
    end

    declare_winner
  end

  private


  def declare_winner
    winner = @player1.is_alive? ? @player1 : @player2
    puts "Player #{winner.player_number} wins with a score of #{winner.lives}/3"
    puts "—Game Over—"
    puts "Good bye!"
  end

  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts "—new turn —"
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
