$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'board'

class   Game
    attr_accessor :player1, :player2, :board
    def initialize()
        @board = Board.new
    end
    def print_menu
        puts("Player1 name:")
        @player1 = Player.new(gets.chomp(), 'X')
        puts("Player2 name:")
        @player2 = Player.new(gets.chomp(), 'O')
    end
    def won(player_in)
        puts("\n#{player_in.name} won !\n\n")
        puts("Scores:")
        puts("#{@player1.name}: #{@player1.score}")
        puts("#{@player2.name}: #{@player2.score} \n\n")
        puts("New game !\n\n")
        @board = Board.new
    end
end