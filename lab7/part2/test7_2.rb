# frozen_string_literal: true

require_relative 'main7_2'

RSpec.describe Board do
  let(:board) { Board.new(40, 30) }

  it 'should has child Box' do
    # child_classes = ObjectSpace.each_object(Class).select { |klass| klass < Board }
    # expect(child_classes.include?(Box)).to eq(true)
    expect(Box.ancestors.include? Board).to eq(true)
  end

  it 'should calculate area correctly' do
    expect(board.area).to eq(1200)
  end
end

RSpec.describe Box do
  let(:box) { Box.new(40, 30, 10) }

  it 'should be child of Board' do
    expect(Box.superclass).to eq(Board)
  end

  it 'should calculate area correctly' do
    expect(box.area).to eq(1200)
  end

  it 'should calculate volume correctly' do
    expect(box.volume).to eq(12_000)
  end
end
