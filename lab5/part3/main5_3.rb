def correct(str)
    result = ''
    corrects_total = 0
    words_arr = str.split(' ')
    words_arr.each do |word|
        correct_status = true
        word.each_char do |ch|
            unless letter?(ch) || numeric?(ch)
                correct_status = false
                break
            end
        end
        if correct_status && numeric?(word[0])
            word[0] = "_"
            corrects_total += 1 unless correct_status
        end
        result += "#{word} " if correct_status 
        corrects_total += 1 unless correct_status            
    end
    result += "    |total corrects: #{corrects_total}"
    return result
end

def letter?(look_ahead)
    look_ahead.match?(/[[:alpha:]]/)
end

def numeric?(look_ahead)
    look_ahead.match?(/[[:digit:]]/)
end
