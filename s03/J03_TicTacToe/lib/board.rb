class Board
    attr_accessor :board, :cells
    def initialize()
        @board = Array.new(3) {Array.new(3, ' ')}
        @cells = 9
    end
    def print_board
        puts("-" * 17)
        puts("|   | A | B | C |")
        @board.each_with_index do |n, index|
            puts("-" * 17)
            print("| #{index} |")
            n.each do |c|
                print(" #{c} |")
            end
            puts()
        end
        puts("-" * 17)
    end
end