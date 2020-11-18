module Stepable
    
    def moves
        move_list = []
        move_diffs.each do |dir|
            piece_pos = self.position.dup
            dx, dy = dir
            piece_pos[0] += dx
            piece_pos[1] += dy
            if possible_move?(piece_pos)
                move_list << piece_pos
            end
        end
        move_list
    end

    def possible_move?(pos)
        if board.valid_position?(pos)
            if board[pos].is_a?(NullPiece)
                return true
            elsif board[pos].color != self.color
                return true
            end
        end
        false
    end


    private
    def move_diffs
    end
end