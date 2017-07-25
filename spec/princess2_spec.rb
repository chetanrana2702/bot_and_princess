require 'spec_helper'

describe Princess2 do
  subject { Princess2.new(5, 2, 3, ['-----', '-----', 'p--m-', '-----', '-----']) }

  describe '#new' do
    it 'return a new princess2 object' do
      expect(subject).to be_an_instance_of Princess2
    end
  end

  describe '#display_princess_path_first' do
    it 'return string value LEFT etc' do
      expect(STDOUT).to receive(:puts).with('LEFT')
      a = Princess2.new(5, 2, 3, ['-----', '-----', 'p--m-', '-----', '-----'])
      a.next_move
    end
  end

  describe '#display_princess_path_second' do
    it 'return string value RIGHT etc' do
      expect(STDOUT).to receive(:puts).with('RIGHT')
      a = Princess2.new(5, 2, 1, ['-----', '-----', '-m--p', '-----', '-----'])
      a.next_move
    end
  end

  describe '#display_princess_path_third' do
    it 'return string value UP etc' do
      expect(STDOUT).to receive(:puts).with('UP')
      a = Princess2.new(5, 2, 3, ['--p--', '-----', '---m-', '-----', '-----'])
      a.next_move
    end
  end

  describe '#display_princess_path_fourth' do
    it 'return string value DOWN etc' do
      expect(STDOUT).to receive(:puts).with('DOWN')
      a = Princess2.new(5, 2, 1, ['-----', '-----', '-m---', '---p-', '-----'])
      a.next_move
    end
  end
end
