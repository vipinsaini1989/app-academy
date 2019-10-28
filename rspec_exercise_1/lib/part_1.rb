def average(num_1,num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.sum(0.0) / arr.length
end

def repeat(text,num)
    new_text = ''
    num.times { new_text += text }

    new_text
end

def yell(str)
    str.upcase() + '!'
end

def alternating_case(sentence)
    sent_arr = sentence.split
    final_sent_arr = []

    sent_arr.each.with_index do |char,idx|
        if idx.even?
            final_sent_arr << char.upcase
        else
            final_sent_arr << char.downcase            
        end
    end

    final_sent_arr.join(" ")
end