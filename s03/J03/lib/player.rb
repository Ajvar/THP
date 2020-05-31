$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'board'
require 'pry'

class Player
    attr_accessor :name, :score, :c
    def initialize(name_in, c)
        @name = name_in
        @score = 0
        @c = c
    end
    def turn(jeu)
        while 1
            print("#{@name}'s turn:\n")
            ans = gets.chomp()
            if ans.length != 2 || /[[:alpha:]]/.match?(ans[0]) == false || /[[:digit:]]/.match?(ans[1]) == false || /[ABC]/.match?(ans[0].to_s.upcase) == false || /[012]/.match?(ans[1]) == false
                puts("wrong input")
                next 
            end
            if jeu.board.board[ans[1].ord - 48][ans[0].downcase.ord - 97] != ' '
                puts("cell not empty")
                next
            end
            jeu.board.board[ans[1].ord - 48][ans[0].downcase.ord - 97] = @c
            jeu.board.cells -= 1
            return 1 if win?(jeu.board.board, self) == 1
            jeu.board.print_board
            break
            return 0
        end
    end
    def win?(arr, player_in)
        if check_first_cell(arr, player_in) == 1||
            (arr[0][2] == player_in.c && arr[1][1] == player_in.c && arr[2][0] == player_in.c) ||
            check_horizontal(player_in, arr[1]) == 1 ||
            check_horizontal(player_in, arr[2]) == 1 ||
            check_vert(arr, 1, player_in) == 1 ||
            check_vert(arr, 2, player_in) == 1
            player_in.score += 1

            return 1
        end
        return 0
    end
    def check_first_cell(arr, player_in)
        if (arr[0][0] == player_in.c && arr[1][1] == player_in.c && arr[2][2] == player_in.c) ||
        check_horizontal(player_in, arr[0]) == 1 || check_vert(arr, 0, player_in) == 1

            return 1
        end
        return 0 
    end
    def check_horizontal(player_in, line)
        line.each do |n| 
            if n != player_in.c
                return -1
            end

        end
        return 1
    end
    def check_vert(arr, index, player_in)
        i = 0
        while i < 3
            if arr[i][index] != player_in.c
                return -1 
            end
            i += 1;
        end

        return 1
    end
end