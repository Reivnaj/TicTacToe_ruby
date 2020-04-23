require 'pry'
class Board
  attr_accessor :cases_hash

  def initialize
    @cases_hash = {
      a1: BoardCase.new, a2: BoardCase.new, a3: BoardCase.new,
      b1: BoardCase.new, b2: BoardCase.new, b3: BoardCase.new,
      c1: BoardCase.new, c2: BoardCase.new, c3: BoardCase.new
    }
  end

  def show_board
    puts "-" * 13
    puts "| #{@cases_hash[:a1].value} | #{@cases_hash[:a2].value} | #{@cases_hash[:a3].value} |"
    puts "-" * 13
    puts "| #{@cases_hash[:b1].value} | #{@cases_hash[:b2].value} | #{@cases_hash[:b3].value} |"
    puts "-" * 13
    puts "| #{@cases_hash[:c1].value} | #{@cases_hash[:c2].value} | #{@cases_hash[:c3].value} |"
    puts "-" * 13
  end

end
