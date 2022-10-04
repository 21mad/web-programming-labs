def palindrom?(str)
    test = ""
    res = false
    str.each_char do |ch|
        if (ch.ord >= 48) &&( ch.ord <= 57) || (ch.ord >= 97) &&( ch.ord <= 122)
            test += ch
        end
    end
    res = true if test == test.reverse
    if res
        return "Yes, " + test + " is a palindrom."
    else
        return "No, " + test + "is a palindrom."
    end
end