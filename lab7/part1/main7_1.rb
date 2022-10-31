# frozen_string_literal: true

require 'faker'

# the Task class
class Task
  # @@file_f
  # @@file_h
  def self.make_f(*str)
    str = str.join unless str.empty?
    @@file_f = File.new('F.txt', 'w')
    str = Faker::Lorem.characters(number: rand(400..500)) if str.empty?
    @@file_f.write(str)
    @@file_f.close
  end

  def self.make_h
    @@file_f = File.open('F.txt')
    @@file_h = File.new('H.txt', 'w')
    str = @@file_f.readline
    new_str = str.chars.select.with_index { |_ch, id| (id > 0) && (str[id - 1] == 'a') }.join
    @@file_h.write(new_str)
    @@file_h.close
  end

  def self.make_files(*str)
    if str.empty?
      make_f
    else
      make_f(str)
    end
    make_h
  end

  def self.show_files
    puts "\nFile F:"
    @@file_f = File.open('F.txt')
    puts @@file_f.readline
    @@file_f.close

    puts "\nFile H:"
    @@file_h = File.open('H.txt')
    puts @@file_h.readline
    @@file_h.close
  end
end
