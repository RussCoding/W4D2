require "singleton"
class Null_Piece < Piece
    # include Singleton

     def initialize(board, position)
        @color = :null
        @board = board
        @position = position
        
    end 
    
    def symbol 
        :□
    end
    
    private
    
   

end