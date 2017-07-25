require 'spec_helper'

describe Princess1 do
  subject { Princess1.new(3, ['p--', '-m-', '---']) }

  describe '#new' do
    it 'return a new princess1 object' do
      expect(subject).to be_an_instance_of Princess1
    end
  end

  describe '#display_princess_path_first' do
    it 'return string value UP LEFT etc' do
      expect(STDOUT).to receive(:puts).with('UP')
      expect(STDOUT).to receive(:puts).with('LEFT')
      a = Princess1.new(3, ['p--', '-m-', '---'])
      a.display_princess_path
    end
  end

  describe '#display_princess_path_second' do
    it 'return string value UP RIGHT etc' do
      expect(STDOUT).to receive(:puts).with('UP')
      expect(STDOUT).to receive(:puts).with('RIGHT')
      a = Princess1.new(3, ['--p', '-m-', '---'])
      a.display_princess_path
    end
  end

  describe '#display_princess_path_third' do
    it 'return string value DOWN LEFT etc' do
      expect(STDOUT).to receive(:puts).with('DOWN')
      expect(STDOUT).to receive(:puts).with('LEFT')
      a = Princess1.new(3, ['---', '-m-', 'p--'])
      a.display_princess_path
    end
  end

  describe '#display_princess_path_fourth' do
    it 'return string value DOWN RIGHT etc' do
      expect(STDOUT).to receive(:puts).with('DOWN')
      expect(STDOUT).to receive(:puts).with('RIGHT')
      a = Princess1.new(3, ['---', '-m-', '--p'])
      a.display_princess_path
    end
  end

  describe '#display_princess_path_fourth' do
    it 'return string value LEFT etc' do
      expect(STDOUT).to receive(:puts).with('LEFT')
      a = Princess1.new(3, ['---', 'pm-', '---'])
      a.display_princess_path
    end
  end

  describe '#display_princess_path_fourth' do
    it 'return string value RIGHT etc' do
      expect(STDOUT).to receive(:puts).with('RIGHT')
      a = Princess1.new(3, ['---', '-mp', '---'])
      a.display_princess_path
    end
  end
end
