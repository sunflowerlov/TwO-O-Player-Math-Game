require_relative 'game'
require_relative 'player'

player1 = Player.new(1)
player2 = Player.new(2)
game = Game.new(player1, player2)

game.play
