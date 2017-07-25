require './calculate_path'

# This class provides solution to Bot saves princess - 2
# problem of Hacker rank.
class Princess2
  # Here  4 parameters - an integer n indicating grid size,
  # integers r and c indicating the row & column position
  # of the bot and the array grid.
  def initialize(n, r, c, grid)
    @n = n
    @r = r
    @c = c
    @grid = grid
    @calculate_path = CalculatePath.new(@n, @grid)
  end

  # Find next move of Bot
  def next_move
    return false if @n.zero? && @grid.empty?
    show_path
  end

  def bot
    @calculate_path.bot_position
  end

  def princess
    @calculate_path.princess_position
  end

  def show_path
    return false unless bot[0] == @r
    if bot[0] < princess[0]
      puts 'DOWN'
    elsif bot[0] > princess[0]
      puts 'UP'
    elsif bot[1] > princess[1]
      puts 'LEFT'
    elsif bot[1] < princess[1]
      puts 'RIGHT'
    end
  end
end

# # Input from User
# puts 'Enter grid size in integer value:'
# n = gets.to_i

# puts 'Enter bot row and column position in grid like 2, 3:'
# r, c = gets.strip.split.map(&:to_i)

# puts 'Fill grid with values:'
# grid = Array.new(n)
# (0...n).each do |i|
#   grid[i] = gets
# end

# obj = Princess2.new(m, grid)
# obj = Princess2.new(5, 2, 3, ["-----", "-----", "p--m-", "-----", "-----"])
# obj = Princess2.new(5, 2, 2, ["-----", "-----", "--m--", "-----", "p----"])
# puts 'Next move of bot is:'
# obj = Princess2.new(n, r, c, grid)
# obj.next_move
