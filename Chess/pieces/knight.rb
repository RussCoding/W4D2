require_relative "piece"
require_relative "stepable"
class Knight < Piece
    include Stepable
    def symbol
        :Kt
    end
end