require_relative 'main6_3'

RSpec.describe Task do
  let(:tasker){Task.new}
  context 'y = sin(x) with block' do
    before(:each) do
        @result = tasker.differ(0.5, 0.1){ |val| Math.sin(val) }
    end
    it 'should calculate correctly 1' do
        expect(@result[0]).to equal(0.009240232704791263)
    end
    it 'should calculate correctly 2' do
        expect(@result[1]).to equal(0.008761206554319242)
    end
    it 'should calculate correctly 3' do
        expect(@result[2]).to equal(0.20005239584552845)
    end
  end

  context 'y = tg(x + 1) with block' do
    before(:each) do
      @result = tasker.differ(0.5, 0.1){ |val| Math.tan(val + 1)}
    end
    it 'should calculate correctly 1' do
      expect(@result[0]).to equal(3.6622280688897764)
    end
    it 'should calculate correctly 2' do
      expect(@result[1]).to equal(-2.0015208225520102)
    end
    it 'should calculate correctly 3' do
      expect(@result[2]).to equal(-2.024701735125109)
    end
  end

  context 'y = sin(x) with lambda func' do
    before(:each) do
        my_sin = ->(x){ Math.sin(x) }
        @result = tasker.differ_func(0.5, 0.1, my_sin)
    end
    it 'should calculate correctly 1' do
        expect(@result[0]).to equal(0.009240232704791263)
    end
    it 'should calculate correctly 2' do
        expect(@result[1]).to equal(0.008761206554319242)
    end
    it 'should calculate correctly 3' do
        expect(@result[2]).to equal(0.20005239584552845)
    end
  end

  context 'y = tg(x + 1) with lambda func' do
    before(:each) do
        my_tg = ->(x){ Math.tan(x + 1) }
        @result = tasker.differ_func(0.5, 0.1, my_tg)
    end
    it 'should calculate correctly 1' do
        expect(@result[0]).to equal(3.6622280688897764)
    end
    it 'should calculate correctly 2' do
        expect(@result[1]).to equal(-2.0015208225520102)
    end
    it 'should calculate correctly 3' do
        expect(@result[2]).to equal(-2.024701735125109)
    end
  end
end