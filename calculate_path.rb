# This class is reponsible for providing
# the Bot and Princess Location inside the grid
class CalculatePath
  def initialize(n, grid)
    @n = n
    @grid = grid
  end

  # Find princess position in the grid
  # p is a value of princess passed as an argument
  def find_princess_position
    position_coordinates('p')
  end

  # Find position of bot in the grid
  # m is a value of bot passed as an argument
  def find_bot_position
    position_coordinates('m')
  end

  # This function will return bot or princess
  # grid cell position like [[3], [1]]
  def position_coordinates(character)
    which_row = []
    which_cell = []
    (0...@n).each { |i| prepare_set(i, character, which_row, which_cell) }
    [which_row, which_cell]
  end

  def prepare_set(i, character, which_row, which_cell)
    @grid[i].split('').each_with_index do |k, index|
      if k == character
        which_row << i
        which_cell << index
      end
    end
  end

  def bot_position
    position = find_bot_position
    position.flatten!
  end

  def princess_position
    position = find_princess_position
    position.flatten!
  end
end
