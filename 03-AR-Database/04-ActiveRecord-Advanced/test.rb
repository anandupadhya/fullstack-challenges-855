spin_words("Hey fellow Le Wagon alumni") => "Hey wollef Le nogaW inmula"
spin_words("Rake it until you make it") => "Rake it litnu you make it"
spin_words("Change your life, learn to code") => "egnahC your life, nrael to code"

def spinword(str):
    new =[]
    for i in str.split():
        new.append(i[::-1])
    print(' '.join(new))

spinword(str)
