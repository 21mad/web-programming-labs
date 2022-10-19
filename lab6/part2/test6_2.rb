# frozen_string_literal: true

require_relative 'main6_2'

RSpec.describe Task do
  let(:tasker) { Task.new }

  it 'should calculate correctly' do
    expect(tasker.calculate(0.00001)).to eq(0.055545373085695654)
  end

  it 'should has correct number of iterations' do
    tasker.calculate(0.00001)
    expect(tasker.iter_count).to eq(30)
  end
end
