# frozen_string_literal: true

require_relative 'main7_1'
require 'faker'

RSpec.describe Task do
  it 'should make the H.txt file correctly' do
    rand_str = Faker::Lorem.characters(number: rand(100..150)).chars.reject { |ch| ch == 'a' }.join # string without 'a'
    p rand_word = Faker::Lorem.word.chars.reject { |ch| ch == 'a' }.join # word without 'a' char
    rand_word_a = rand_word.chars.map { |ch| 'a' + ch }.join # insert 'a' char before each sym
    rand_str.insert(rand(0..149), rand_word_a) # insert key word in string
    Task.make_files(rand_str)
    test_file = File.open('H.txt', 'r')
    expect(p(test_file.readline)).to eq(rand_word)
  end
end
