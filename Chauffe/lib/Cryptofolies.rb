def caesar_cipher(s, n)
    i = -1
    while s[i]
        if c.ord > 64 && c.ord < 91
            if c.ord + n > 90
                c = c.ord - 26 + n 
                next
            end
            c = c.ord + n
            next
        end
        if c.ord > 96 && c.ord < 122
            if c.ord + n > 122
                c = c.ord - 26 + n
                next
            end
            c = c.ord + n 
            next
        end
    end
    return s
end

puts(caesar_cipher("LOL", 5))