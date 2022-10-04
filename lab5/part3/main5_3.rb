def correct(str)
    result = ""
    corrects_total = 0
    words_arr = str.split(" ")
    words_arr.each do |word|
        correct_status = true
        word.each_char do |ch|
            if !(letter?(ch) || numeric?(ch))
                correct_status = false
                break
            end
        end
        if correct_status && numeric?(word[0])
            word[0] = "_"
            corrects_total += 1 if !correct_status  
        end
        result += " #{word}" if correct_status 
        corrects_total += 1 if !correct_status               
    end
    result += "    |total corrects: #{corrects_total}"
    return result  
end

def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
end
  
def numeric?(lookAhead)
    lookAhead.match?(/[[:digit:]]/)
end