$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'pry'
jeu = Game.new
jeu.print_menu
jeu.board.print_board
win = 0
while (win == 0 && jeu.board.cells > 0)

    jeu.won(jeu.player1) if jeu.player1.turn(jeu) == 1
    jeu.won(jeu.player2) if jeu.player2.turn(jeu) == 1

end

