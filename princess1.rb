require './calculate_path'
# This class is resposible to show princess resque path
# taken by bot.
class Princess1
  def initialize(n, grid)
    @n = n
    @grid = grid
    @calculate_path = CalculatePath.new(@n, @grid)
  end

  def display_princess_path
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
    in_down_cell if bot[0] < princess[0]
    in_up_cell if bot[0] > princess[0]
    in_left_cell if bot[1] > princess[1]
    in_right_cell if bot[1] < princess[1]
  end

  def in_down_cell
    (0...(bot[0] - princess[0]).abs).each { puts 'DOWN' }
  end

  def in_up_cell
    (0...(bot[0] - princess[0]).abs).each { puts 'UP' }
  end

  def in_left_cell
    (0...(bot[1] - princess[1]).abs).each { puts 'LEFT' }
  end

  def in_right_cell
    (0...(bot[1] - princess[1]).abs).each { puts 'RIGHT' }
  end
end

# # Take input from user
# puts 'Enter grid size in integer value:'
# m = gets.to_i

# puts 'Fill grid with values:'
# grid = Array.new(m)
# (0...m).each do |i|
#   grid[i] = gets.strip
# end

# puts 'Display path to princess:'
# obj = Princess1.new(m, grid)

# obj = Princess1.new(3, ['p--', '-m-', '---'])
# obj.display_princess_path
