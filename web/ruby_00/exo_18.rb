mail = []
u = 0
d = 0

while d <= 50
    if d < 10
        mail.insert(d, "jean.dupont.#{u}#{d}@email.fr")
    else
        mail.insert(d, "jean.dupont.#{d}@email.fr")
    end
    d += 1
end
puts mail
